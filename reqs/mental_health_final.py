#!/usr/bin/env python
# coding: utf-8

# In[1]:


# Importing required libraries
import pandas as pd
import numpy as np
import hvplot.pandas
import hvplot.dask
from pathlib import Path
from collections import Counter
import matplotlib as mpl
from matplotlib import style
import matplotlib.pyplot as plt
import warnings

warnings.filterwarnings("ignore")
from sklearn.metrics import balanced_accuracy_score
from sklearn.metrics import confusion_matrix
from imblearn.metrics import classification_report_imbalanced
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler, OrdinalEncoder
import seaborn as sns

# Import password for DB
from config import password


# In[2]:


# Begin SQLAlchemy
from sqlalchemy import create_engine, inspect
from config import password

url = "postgresql://postgres:" + password + "@localhost/Team_Two"
engine = create_engine(url)


# In[3]:


# Get the name of the table.
inspector = inspect(engine)
inspector.get_table_names()


# In[4]:


# Make a connection to the SQL database
conn = engine.connect()


# In[5]:


# Using the inspector to print the column names within the 'MENTAL_HEALTH' table in FILE.sqlite and its types
columns = inspector.get_columns("MENTAL_HEALTH")
for column in columns:
    print(column)


# In[6]:


# Query Employees Records in the the Database
df_e = pd.read_sql('SELECT * FROM "EMPLOYEES"', conn)
df_e.head()


# In[7]:


# Query Mental_Health Records in the the Database
df_m = pd.read_sql('SELECT * FROM "MENTAL_HEALTH"', conn)
df_m


# In[8]:


# Merge the Two Tables
df = df_e.merge(df_m, how="outer", on="ID")
df.head()


# In[9]:


# Basic Information
df.info()


# In[10]:


# Describe the data
df.describe()


# In[11]:


# Check df for duplicates
df.duplicated().sum()


# In[12]:


# Check df shape
df.shape


# In[13]:


# Check df columns
df.columns


# In[14]:


# Find df null values
df.isnull().sum()


# In[15]:


# Drop MEDICAL_COVERAGE_INCLUDING_MENTAL_HEALTH_TREATMENT column from d
df.drop(
    ["MEDICAL_COVERAGE_INCLUDING_MENTAL_HEALTH_TREATMENT"], axis=1, inplace=True
)


# In[16]:


# Replace null values in Gender column of df
df["GENDER"].fillna("NA", inplace=True)
df


# In[17]:


# Replace null values in MENTAL_HEALTH_COVERAGE column of df
df["MENTAL_HEALTH_COVERAGE"].fillna("NA", inplace=True)


# In[18]:


# Replace null values in TECH_COMPANY column of df
df["TECH_COMPANY"].fillna("NA", inplace=True)


# In[19]:


# Replace null values in MENTAL_HEALTH_OPTIONS_UNDER_COVERAGE column of df
df["MENTAL_HEALTH_OPTIONS_UNDER_COVERAGE"].fillna("NA", inplace=True)


# In[20]:


# Replace null values in EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES  column of df
df["EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES"].fillna("NA", inplace=True)


# In[21]:


# Replace null values in PREV_EMPLOYERS_PROVIDE_MENTAL_HEALTH_BENEFITS column of df
df["PREV_EMPLOYERS_PROVIDE_MENTAL_HEALTH_BENEFITS"].fillna("NA", inplace=True)


# In[22]:


# Replace null values in AWARENESS_OF_MENTAL_HEALTH_COVERAGE_BY_PREV_EMPLOYERS column of df
df["AWARENESS_OF_MENTAL_HEALTH_COVERAGE_BY_PREV_EMPLOYERS"].fillna(
    "NA", inplace=True
)


# In[23]:


# Replace null values in PREV_EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES column of df
df["PREV_EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES"].fillna("NA", inplace=True)


# In[24]:


# Find null values of df
df.isnull().sum()


# In[25]:


# Check datatypes of df
df.dtypes


# In[26]:


# Changes TECH_COMPANY to an integer to be encoded
df["TECH_COMPANY"] = df["TECH_COMPANY"].replace([1.0, 0.0], ["Yes", "No"])
df.head(10)


# In[27]:


# Bar plot to show percentages of Mental Health Coverage by survery respondants
sns.set_style("whitegrid")
plt.figure(figsize=(8, 6))
eda_percentage = (
    df["MENTAL_HEALTH_COVERAGE"]
    .value_counts(normalize=True)
    .rename_axis("Mental_Health_Coverage")
    .reset_index(name="Percentage")
)
sns.barplot(
    x="Mental_Health_Coverage", y="Percentage", data=eda_percentage.head(10)
)
plt.title("Survey Respondant Percentages of Mental Health Coverage")
plt.xticks(rotation=45)
plt.show()


# In[28]:


# clean "Gender" column
df.GENDER = df.GENDER.str.lower()
male = [
    "male",
    "m",
    "male-ish",
    "sex is male",
    "male.",
    "male (trans, ftm)",
    "maile",
    "mal",
    "male (cis)",
    "make",
    "male ",
    "man",
    "msle",
    "mail",
    "malr",
    "cis man",
    "cis male",
    "nb masculine",
    "male 9:1 female, roughly",
    "cisdude",
    "m|",
    "I'm a man why didn't you make this a drop down question. you should of asked sex? and i would of answered yes please. seriously how much text can this take?",
    "male/genderqueer",
]
female = [
    "cis female",
    "female",
    "cis-woman",
    "female-bodied; no feelings about gender",
    "cisgender female",
    "f",
    "fm",
    "female",
    "female/woman",
    "woman",
    "femake",
    "female ",
    "cis-female/femme",
    "female (cis)",
    "femail",
    "i identify as female.",
    "female (props for making this a freeform field, though)",
    "genderqueer woman",
    "fem",
    "genderflux demi-girl",
    "transgender woman",
    "female assigned at birth",
]
other = [
    "other",
    "bigender",
    "female assigned at birth",
    "trans-female",
    "something kinda male?",
    "queer/she/they",
    "non-binary",
    "nonbinary",
    "na",
    "nah",
    "human",
    "all",
    "enby",
    "fluid",
    "other/transfeminine",
    "androgynous",
    "" "genderqueer",
    "androgyne",
    "agender",
    "mtf",
    "dude",
    "male leaning androgynous",
    "guy (-ish) ^_^",
    "trans woman",
    "neuter",
    "female (trans)",
    "queer",
    "ostensibly male, unsure what that really means",
    "p",
    "a little about you",
    "none of your business",
    "afab",
    "genderfluid",
    "unicorn",
]

df.GENDER.loc[df.GENDER.isin(male)] = "male"
df.GENDER.loc[df.GENDER.isin(female)] = "female"
df.GENDER.loc[df.GENDER.isin(other)] = "others"

# color palette for seaborn
cmap = sns.diverging_palette(220, 10, as_cmap=True)

# List gender values
gender_values = df.GENDER.value_counts().sort_values(ascending=False).to_frame()
gender_values = gender_values.rename(columns={"GENDER": "count"})
table_gender = gender_values.style.background_gradient(cmap=cmap)
table_gender


# In[29]:


# Converting Target to two categories for simplicity
df["MENTAL_HEALTH_COVERAGE"] = df["MENTAL_HEALTH_COVERAGE"].replace(
    [
        "NA",
        "Not eligible for coverage",
        "I don't know",
        "Not eligible for coverage ",
    ],
    ["No", "No", "No", "No"],
)
df.head(10)


# In[30]:


# View MENTAL_HEALTH_COVERAGE data only
df.hvplot.table(
    columns=["MENTAL_HEALTH_COVERAGE"], sortable=True, selectable=True
)


# In[31]:


# Check datatypes of df
df.dtypes


# In[32]:


df.describe()


# In[33]:


# Check the types after changing data type to a integer
df.dtypes


# In[34]:


# This allows us to get a feature list
application_cat = df.dtypes[df.dtypes == "object"].index.tolist()
application_cat


# In[35]:


# Create a Ordinal instance
enc = OrdinalEncoder()

# Fit and transform the Ordinal using the categorical variable list
encode_df = pd.DataFrame(enc.fit_transform(df[application_cat]))

# Add the encoded variable names to the dataframe
encode_df.columns = application_cat
encode_df.head()


# In[36]:


# Correlation Matrix
encode_df.corr(method="pearson")


# In[37]:


c = encode_df.corr(method="pearson")
# code borrowed from Instructor Nicole L.
# Set up the matplotlib plot configuration

f, ax = plt.subplots(figsize=(12, 10))

# Generate a mask for upper traingle

mask = np.triu(np.ones_like(c, dtype=bool))

# Configure a custom diverging colormap

cmap = sns.diverging_palette(230, 20, as_cmap=True)

# Draw the heatmap

sns.heatmap(c, annot=True, mask=mask, cmap=cmap)


# In[38]:


# Boxplot of Age column
b_plot = df.boxplot(column="AGE")
b_plot.plot()


# In[39]:


# Create our features
X = encode_df.drop(columns="MENTAL_HEALTH_COVERAGE").values

# Create our target
y = encode_df["MENTAL_HEALTH_COVERAGE"].values

X_train, X_test, y_train, y_test = train_test_split(
    X, y, random_state=42, stratify=y
)

Counter(y_train)


# In[40]:


# Creating a StandardScaler instance.
scaler = StandardScaler()
# Fitting the Standard Scaler with the training data.
X_scaler = scaler.fit(X_train)

# Scaling the data.
X_train_scaled = X_scaler.transform(X_train)
X_test_scaled = X_scaler.transform(X_test)


# In[41]:


# Fitting the model
from sklearn.linear_model import LogisticRegression

model = LogisticRegression(solver="lbfgs", max_iter=200, random_state=42)

model.fit(X_train_scaled, y_train)


# In[42]:


# Make Prediction
predictions = model.predict(X_test_scaled)
pd.DataFrame({"Prediction": predictions, "Actual": y_test}).head(5)


# In[43]:


# Calculated the balanced accuracy score
from sklearn.metrics import accuracy_score

acc_score = accuracy_score(y_test, predictions)
print(f"Accuracy Score : {acc_score}")


# In[44]:


# Calculating the confusion matrix
cm = confusion_matrix(y_test, predictions)

# Create a DataFrame from the confusion matrix.
cm_df = pd.DataFrame(
    cm, index=["Actual 0", "Actual 1"], columns=["Predicted 0", "Predicted 1"]
)
cm_df


# In[45]:


# Print the imbalanced classification report
from sklearn.metrics import classification_report

print(classification_report(y_test, predictions))


# In[46]:


# example of grid searching key hyperparametres for logistic regression
# Code was borrowed from https://machinelearningmastery.com/hyperparameters-for-classification-machine-learning-algorithms/
from sklearn.model_selection import RepeatedStratifiedKFold
from sklearn.model_selection import GridSearchCV
from sklearn.linear_model import LogisticRegression

# define models and parameters
model = LogisticRegression()
solvers = ["newton-cg", "lbfgs", "liblinear"]
penalty = ["l2"]
c_values = [100, 10, 1.0, 0.1, 0.01]


# In[47]:


# define grid search
grid = dict(solver=solvers, penalty=penalty, C=c_values)
cv = RepeatedStratifiedKFold(n_splits=10, n_repeats=3, random_state=42)
grid_search = GridSearchCV(
    estimator=model,
    param_grid=grid,
    n_jobs=-1,
    cv=cv,
    scoring="accuracy",
    error_score=0,
)
grid_result = grid_search.fit(X_train_scaled, y_train)


# In[48]:


# summarize results
print("Best: %f using %s" % (grid_result.best_score_, grid_result.best_params_))
means = grid_result.cv_results_["mean_test_score"]
stds = grid_result.cv_results_["std_test_score"]
params = grid_result.cv_results_["params"]
for mean, stdev, param in zip(means, stds, params):
    print("%f (%f) with: %r" % (mean, stdev, param))


# In[49]:


model = LogisticRegression(
    C=0.01, penalty="l2", solver="liblinear", random_state=42
)
model.fit(X_train_scaled, y_train)


# In[50]:


# Make Prediction
predictions = model.predict(X_test_scaled)
pd.DataFrame({"Prediction": predictions, "Actual": y_test}).head(5)


# In[51]:


# Calculating the accuracy score
acc_score = accuracy_score(y_test, predictions)
print(f"Accuracy Score : {acc_score}")


# In[52]:


# Calculating the confusion matrix
cm = confusion_matrix(y_test, predictions)

# Create a DataFrame from the confusion matrix.
cm_df = pd.DataFrame(
    cm, index=["Actual 0", "Actual 1"], columns=["Predicted 0", "Predicted 1"]
)
cm_df


# In[53]:


print(classification_report(y_test, predictions))


# In[54]:


# example of grid searching key hyperparameters for RandomForestClassifier
# Code was borrowed from https://machinelearningmastery.com/hyperparameters-for-classification-machine-learning-algorithms/

from sklearn.model_selection import RepeatedStratifiedKFold
from sklearn.ensemble import RandomForestClassifier

# define models and parameters
model = RandomForestClassifier()
n_estimators = [10, 100, 1000]
max_features = ["sqrt", "log2"]


# In[55]:


# define grid search
grid = dict(n_estimators=n_estimators, max_features=max_features)
cv = RepeatedStratifiedKFold(n_splits=10, n_repeats=3, random_state=42)
grid_search = GridSearchCV(
    estimator=model,
    param_grid=grid,
    n_jobs=-1,
    cv=cv,
    scoring="accuracy",
    error_score=0,
)
grid_result = grid_search.fit(X_train_scaled, y_train)


# In[56]:


# summarize results
print("Best: %f using %s" % (grid_result.best_score_, grid_result.best_params_))
means = grid_result.cv_results_["mean_test_score"]
stds = grid_result.cv_results_["std_test_score"]
params = grid_result.cv_results_["params"]
for mean, stdev, param in zip(means, stds, params):
    print("%f (%f) with: %r" % (mean, stdev, param))


# In[57]:


# Create a random forest classifier.
model = RandomForestClassifier(
    n_estimators=100, max_features="sqrt", random_state=42
)

# Fitting the model
rf_model = model.fit(X_train_scaled, y_train)

# Evaluate the model
y_pred = rf_model.predict(X_test_scaled)
print(
    f" Random forest predictive accuracy: {accuracy_score(y_test,y_pred):.3f}"
)


# In[58]:


# Make Prediction
predictions = rf_model.predict(X_test_scaled)
pd.DataFrame({"Prediction": predictions, "Actual": y_test}).head(5)


# In[59]:


# Calculating the accuracy score
acc_score = accuracy_score(y_test, predictions)
print(f"Accuracy Score : {acc_score}")


# In[60]:


cm = confusion_matrix(y_test, predictions)

# Create a DataFrame from the confusion matrix.
cm_df = pd.DataFrame(
    cm, index=["Actual 0", "Actual 1"], columns=["Predicted 0", "Predicted 1"]
)
cm_df


# In[61]:


# Print the imbalanced classification report
print(classification_report(y_test, predictions))


# In[62]:


# example of grid searching key hyperparametres for SVC
# Code was borrowed from:
#https://machinelearningmastery.com/hyperparameters-for-classification-machine-learning-algorithms/
from sklearn.model_selection import RepeatedStratifiedKFold
from sklearn.model_selection import GridSearchCV
from sklearn.svm import SVC

# define model and parameters
model = SVC()
kernel = ["poly", "rbf", "sigmoid"]
C = [50, 10, 1.0, 0.1, 0.01]
gamma = ["scale"]


# In[63]:


# define grid search
grid = dict(kernel=kernel, C=C, gamma=gamma)
cv = RepeatedStratifiedKFold(n_splits=10, n_repeats=3, random_state=42)
grid_search = GridSearchCV(
    estimator=model,
    param_grid=grid,
    n_jobs=-1,
    cv=cv,
    scoring="accuracy",
    error_score=0,
)
grid_result = grid_search.fit(X_train_scaled, y_train)


# In[64]:


# summarize results
print("Best: %f using %s" % (grid_result.best_score_, grid_result.best_params_))
means = grid_result.cv_results_["mean_test_score"]
stds = grid_result.cv_results_["std_test_score"]
params = grid_result.cv_results_["params"]
for mean, stdev, param in zip(means, stds, params):
    print("%f (%f) with: %r" % (mean, stdev, param))


# In[65]:


model = SVC(kernel="rbf", C=1.0, gamma="scale", random_state=42)
model.fit(X_train_scaled, y_train)


# In[66]:


# Make Prediction
predictions = model.predict(X_test_scaled)
pd.DataFrame({"Prediction": predictions, "Actual": y_test}).head(5)


# In[67]:


# Calculating the accuracy score
acc_score = accuracy_score(y_test, predictions)
print(f"Accuracy Score : {acc_score}")


# In[68]:


cm = confusion_matrix(y_test, predictions)

# Create a DataFrame from the confusion matrix.
cm_df = pd.DataFrame(
    cm, index=["Actual 0", "Actual 1"], columns=["Predicted 0", "Predicted 1"]
)
cm_df


# In[69]:


print(classification_report(y_test, predictions))


# In[70]:


# example of grid searching key hyperparametres for KNeighborsClassifier
# Code was borrowed from:
#https://machinelearningmastery.com/hyperparameters-for-classification-machine-learning-algorithms/

from sklearn.model_selection import RepeatedStratifiedKFold
from sklearn.model_selection import GridSearchCV
from sklearn.neighbors import KNeighborsClassifier

# define models and parameters
model = KNeighborsClassifier()
n_neighbors = range(1, 21, 2)
weights = ["uniform", "distance"]
metric = ["euclidean", "manhattan", "minkowski"]


# In[71]:


# define grid search
grid = dict(n_neighbors=n_neighbors, weights=weights, metric=metric)
cv = RepeatedStratifiedKFold(n_splits=10, n_repeats=3, random_state=42)
grid_search = GridSearchCV(
    estimator=model,
    param_grid=grid,
    n_jobs=-1,
    cv=cv,
    scoring="accuracy",
    error_score=0,
)
grid_result = grid_search.fit(X_train_scaled, y_train)


# In[72]:


# summarize results
print("Best: %f using %s" % (grid_result.best_score_, grid_result.best_params_))
means = grid_result.cv_results_["mean_test_score"]
stds = grid_result.cv_results_["std_test_score"]
params = grid_result.cv_results_["params"]
for mean, stdev, param in zip(means, stds, params):
    print("%f (%f) with: %r" % (mean, stdev, param))


# In[73]:


model = KNeighborsClassifier(
    metric="manhattan", n_neighbors=15, weights="uniform"
)
model.fit(X_train_scaled, y_train)


# In[74]:


# Make Prediction
predictions = model.predict(X_test_scaled)
pd.DataFrame({"Prediction": predictions, "Actual": y_test}).head(5)


# In[75]:


# Calculating the accuracy score
acc_score = accuracy_score(y_test, predictions)
print(f"Accuracy Score : {acc_score}")


# In[76]:


cm = confusion_matrix(y_test, predictions)

# Create a DataFrame from the confusion matrix.
cm_df = pd.DataFrame(
    cm, index=["Actual 0", "Actual 1"], columns=["Predicted 0", "Predicted 1"]
)
cm_df


# In[77]:


print(classification_report(y_test, predictions))


# In[78]:


# example of grid searching key hyperparametres for ridge classifier
# Code was borrowed from: 
#https://machinelearningmastery.com/hyperparameters-for-classification-machine-learning-algorithms/
from sklearn.linear_model import RidgeClassifier

# define models and parameters
model = RidgeClassifier()
alpha = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]


# In[79]:


# define grid search
grid = dict(alpha=alpha)
cv = RepeatedStratifiedKFold(n_splits=10, n_repeats=3, random_state=42)
grid_search = GridSearchCV(
    estimator=model,
    param_grid=grid,
    n_jobs=-1,
    cv=cv,
    scoring="accuracy",
    error_score=0,
)
grid_result = grid_search.fit(X_train_scaled, y_train)


# In[80]:


# summarize results
print("Best: %f using %s" % (grid_result.best_score_, grid_result.best_params_))
means = grid_result.cv_results_["mean_test_score"]
stds = grid_result.cv_results_["std_test_score"]
params = grid_result.cv_results_["params"]
for mean, stdev, param in zip(means, stds, params):
    print("%f (%f) with: %r" % (mean, stdev, param))


# In[81]:


model = RidgeClassifier(alpha=0.1, random_state=42)
model.fit(X_train_scaled, y_train)


# In[82]:


# Make Prediction
predictions = model.predict(X_test_scaled)
pd.DataFrame({"Prediction": predictions, "Actual": y_test}).head(5)


# In[83]:


# Calculating the accuracy score
acc_score = accuracy_score(y_test, predictions)
print(f"Accuracy Score : {acc_score}")


# In[84]:


cm = confusion_matrix(y_test, predictions)

# Create a DataFrame from the confusion matrix.
cm_df = pd.DataFrame(
    cm, index=["Actual 0", "Actual 1"], columns=["Predicted 0", "Predicted 1"]
)
cm_df


# In[85]:


print(classification_report(y_test, predictions))


# In[86]:


from sklearn.ensemble import GradientBoostingClassifier

# Create a classifier object
learning_rates = [0.05, 0.1, 0.25, 0.5, 0.75, 1]
for learning_rate in learning_rates:
    classifier = GradientBoostingClassifier(
        n_estimators=20,
        learning_rate=learning_rate,
        max_features=5,
        max_depth=3,
        random_state=0,
    )

    # Fit the model
    classifier.fit(X_train_scaled, y_train)
    print("Learning rate: ", learning_rate)

    # Score the model
    print(
        "Accuracy score (training): {0:.3f}".format(
            classifier.score(X_train_scaled, y_train)
        )
    )
    print(
        "Accuracy score (validation): {0:.3f}".format(
            classifier.score(X_test_scaled, y_test)
        )
    )
    print()


# In[87]:


# Choose a learning rate and create model
model = GradientBoostingClassifier(
    n_estimators=20,
    learning_rate=0.1,
    max_features=5,
    max_depth=3,
    random_state=42,
)

# Fit the model
model.fit(X_train_scaled, y_train)

# Make Prediction
predictions = model.predict(X_test_scaled)
pd.DataFrame({"Prediction": predictions, "Actual": y_test}).head(5)


# In[88]:


# Calculating the accuracy score
acc_score = accuracy_score(y_test, predictions)
print(f"Accuracy Score : {acc_score}")


# In[89]:


# Display the confusion matrix
cm = confusion_matrix(y_test, predictions)

# Create a DataFrame from the confusion matrix.
cm_df = pd.DataFrame(
    cm, index=["Actual 0", "Actual 1"], columns=["Predicted 0", "Predicted 1"]
)
cm_df


# In[90]:


# Print the imbalanced classification report
print(classification_report(y_test, predictions))


# In[91]:


import tensorflow as tf

# Define the basic neural network model
nn_model = tf.keras.models.Sequential()
nn_model.add(
    tf.keras.layers.Dense(units=16, activation="sigmoid", input_dim=11)
)
nn_model.add(tf.keras.layers.Dense(units=8, activation="sigmoid"))
nn_model.add(tf.keras.layers.Dense(units=1, activation="sigmoid"))

# Compile the Sequential model together and customize metrics
nn_model.compile(
    loss="binary_crossentropy", optimizer="adam", metrics=["accuracy"]
)

# Train the model
fit_model = nn_model.fit(X_train_scaled, y_train, epochs=50)

# Evaluate the model using the test data
model_loss, model_accuracy = nn_model.evaluate(X_test_scaled, y_test, verbose=2)
print(f"Loss: {model_loss}, Accuracy: {model_accuracy}")


# In[92]:


# Create a method that creates a new Sequential model with hyperparameter options
def create_model(hp):
    nn_model = tf.keras.models.Sequential()

    # Allow kerastuner to decide which activation function to use in hidden layers
    activation = hp.Choice("activation", ["relu", "tanh", "sigmoid"])

    # Allow kerastuner to decide number of neurons in first layer
    nn_model.add(
        tf.keras.layers.Dense(
            units=hp.Int("first_units", min_value=1, max_value=10, step=2),
            activation=activation,
            input_dim=11,
        )
    )

    # Allow kerastuner to decide number of hidden layers and neurons in hidden layers
    for i in range(hp.Int("num_layers", 1, 6)):
        nn_model.add(
            tf.keras.layers.Dense(
                units=hp.Int(
                    "units_" + str(i), min_value=1, max_value=10, step=2
                ),
                activation=activation,
            )
        )

    nn_model.add(tf.keras.layers.Dense(units=1, activation="sigmoid"))

    # Compile the model
    nn_model.compile(
        loss="binary_crossentropy", optimizer="adam", metrics=["accuracy"]
    )

    return nn_model


# In[93]:


# Import the kerastuner library
import kerastuner as kt

tuner = kt.Hyperband(
    create_model,
    objective="val_accuracy",
    max_epochs=20,
    hyperband_iterations=2,
)


# In[94]:


# Run the kerastuner search for best hyperparameters
tuner.search(
    X_train_scaled, y_train, epochs=20, validation_data=(X_test_scaled, y_test)
)


# In[95]:


# Evaluate the model using the test data

# Get best model hyperparameters
best_hyper = tuner.get_best_hyperparameters(1)[0]
best_hyper.values

# Evaluate best model against full test data
best_model = tuner.get_best_models(1)[0]
model_loss, model_accuracy = best_model.evaluate(
    X_test_scaled, y_test, verbose=2
)
print(f"Loss: {model_loss}, Accuracy: {model_accuracy}")


# In[96]:


from xgboost import XGBClassifier
import optuna

## code borrowed from: 
#https://www.kaggle.com/code/faressayah/hyperparameter-optimization-for-machine-learning?scriptVersionId=118252459


def objective(trial):
    # Define the hyperparameters to tune
    learning_rate = trial.suggest_float("learning_rate", 1e-5, 1e-1)
    max_depth = trial.suggest_int("max_depth", 3, 7)
    n_estimators = trial.suggest_int("n_estimators", 100, 1000)
    min_child_weight = trial.suggest_int("min_child_weight", 1, 5)

    # Create an XGBoost classifier
    clf = XGBClassifier(
        learning_rate=learning_rate,
        max_depth=max_depth,
        n_estimators=n_estimators,
        min_child_weight=min_child_weight,
    )

    # Train the classifier and calculate the accuracy on the validation set
    clf.fit(X_train_scaled, y_train)
    score = clf.score(X_test_scaled, y_test)

    return 1.0 - score


# Use Optuna to tune the hyperparameters
study = optuna.create_study()
study.optimize(objective, n_trials=100)

# Print the best hyperparameters and the best score
print("Best hyperparameters: ", study.best_params)
print("Best score: ", 1.0 - study.best_value)

# Train the classifier with the best hyperparameters on the full training set
best_params = study.best_params
clf = XGBClassifier(
    learning_rate=best_params["learning_rate"],
    max_depth=best_params["max_depth"],
    n_estimators=best_params["n_estimators"],
    min_child_weight=best_params["min_child_weight"],
)
clf.fit(X_train_scaled, y_train)

# Evaluate the tuned classifier on the test set
score = clf.score(X_test_scaled, y_test)
print("Test set accuracy: ", score)


# In[97]:


clf = XGBClassifier(
    learning_rate=0.07836401401944326,
    max_depth=3,
    n_estimators=100,
    min_child_weight=2,
)
clf.fit(X_train_scaled, y_train)


# In[98]:


# Make Prediction
predictions = model.predict(X_test_scaled)
pd.DataFrame({"Prediction": predictions, "Actual": y_test}).head(5)


# In[99]:


# Calculating the accuracy score
acc_score = accuracy_score(y_test, predictions)
print(f"Accuracy Score : {acc_score}")


# In[100]:


# Display the confusion matrix
cm = confusion_matrix(y_test, predictions)

# Create a DataFrame from the confusion matrix.
cm_df = pd.DataFrame(
    cm, index=["Actual 0", "Actual 1"], columns=["Predicted 0", "Predicted 1"]
)
cm_df


# In[101]:


# Print the imbalanced classification report
print(classification_report(y_test, predictions))


# In[102]:


## code borrowed from:
#https://www.kaggle.com/code/faressayah/hyperparameter-optimization-for-machine-learning?scriptVersionId=118252459


def objective(trial):
    # Define the hyperparameters to tune
    n_estimators = trial.suggest_int("n_estimators", 100, 1000)
    max_depth = trial.suggest_int("max_depth", 3, 7)
    min_samples_split = trial.suggest_int("min_samples_split", 2, 5)
    min_samples_leaf = trial.suggest_int("min_samples_leaf", 1, 5)

    # Create a random forest classifier
    clf = RandomForestClassifier(
        n_estimators=n_estimators,
        max_depth=max_depth,
        min_samples_split=min_samples_split,
        min_samples_leaf=min_samples_leaf,
    )

    # Train the classifier and calculate the accuracy on the validation set
    clf.fit(X_train_scaled, y_train)
    score = clf.score(X_test_scaled, y_test)

    return 1.0 - score


# Use Optuna to tune the hyperparameters
study = optuna.create_study()
study.optimize(objective, n_trials=100)

# Print the best hyperparameters and the best score
print("Best hyperparameters: ", study.best_params)
print("Best score: ", 1.0 - study.best_value)

# Train the classifier with the best hyperparameters on the full training set
best_params = study.best_params
clf = RandomForestClassifier(
    n_estimators=best_params["n_estimators"],
    max_depth=best_params["max_depth"],
    min_samples_split=best_params["min_samples_split"],
    min_samples_leaf=best_params["min_samples_leaf"],
)
clf.fit(X_train_scaled, y_train)

# Evaluate the tuned classifier on the test set
score = clf.score(X_test_scaled, y_test)
print("Test set accuracy: ", score)


# In[103]:


clf = RandomForestClassifier(
    n_estimators=533, max_depth=5, min_samples_split=4, min_samples_leaf=1
)
clf.fit(X_train_scaled, y_train)


# In[104]:


# Make Prediction
predictions = model.predict(X_test_scaled)
pd.DataFrame({"Prediction": predictions, "Actual": y_test}).head(5)


# In[105]:


# Calculating the accuracy score
acc_score = accuracy_score(y_test, predictions)
print(f"Accuracy Score : {acc_score}")


# In[106]:


# Display the confusion matrix
cm = confusion_matrix(y_test, predictions)

# Create a DataFrame from the confusion matrix.
cm_df = pd.DataFrame(
    cm, index=["Actual 0", "Actual 1"], columns=["Predicted 0", "Predicted 1"]
)
cm_df


# In[107]:


# Print the imbalanced classification report
print(classification_report(y_test, predictions))

