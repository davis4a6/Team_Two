# Mental Health and Employment 
***Bradley Caldwell, Ariana Davis, and Stacey Marotta***

![Alt text](images/Workplace-Mental-Health-scaled.jpeg)

## List of Technologies

- pgAdmin with postgresSQL
- Jupyter Notebooks with Python
- Visual Studio Code
- Tableau

## Communication Plan

Our team created a group on `Slack` in order to communicate and share links with each other. We also created a recurring `Zoom` link and session to meet on a weekly basis and discuss where we are at with our project, as well as what tasks we still need to accomplish to get each deliverable completed. Our team has been really open with working together and offering help to one another when needed.

## Part 1 - Project Intro and Data Exploration

### Overview

The purpose of this analysis is to use `Supervised Machine Learning` to understand whether or not employers are providing healthcare benefits that includes mental healthcare in the workplace. Our project would like to examine any relationships between mental health and employment. 


### Data Source 

The dataset selected was survey data that asked participants to talk about their experiences with healthcare and mental health in the workplace. We found the Open Sourcing Mental Illness(OSMI) [website](https://osmihelp.org/research.html) dedicated to getting people to talk about mental health and the resources provided to the tech. and open source communities. Our group felt that this would be would be a decent representation of relationships of mental health and employment. 

### Question

Does your employer provide healthcare benefits that include mental healthcare?

### Data Exploration

Preliminary Data Preprocessing
1. Correlation Matrix

![Alt text](images/CorrelationMatrix.PNG)

2. Heat Map

![Alt text](images/Heatmap.PNG)

### Feature Selection and Engineering

We selected our features based on three things:

1. Target

    Our target was ‘Mental Health Coverage” and whether or not a company offers it as a benefit. So, when choosing our targets we wanted to make sure that they were variables that could help predict that in some way.

2. Interest

    We also chose features on interest; if two variables could be associated with one another, or have a casual relationship based on a negative or positive correlation. For example, mental health coverage in tech,  mental health coverage while working from home?, and mental health coverage based on the country that you live in.

3. Future Analyses & Recommendations
     Comparing gender with current mental health disorders, and whether or not mental health coverage could show us some results worth looking into for future analyses and research. Comparing whether or not companies offer mental health coverage with Age and current mental health disorders could possibly show recommendations to companies to offer mental health coverage to their employees or not. These are all things we were thinking of while selecting our features.

![Alt text](images/Features.PNG)

### Feature Engineering

There were a number of things we had to do in order to transform the given data into a form that was easier to interpret. First, we started off by renaming the columns so they could be more concise and easier to read while coding.

When choosing features we had columns with:
- Categorical Features; since algorithms are not designed to process textual data we decided to use one-hot encoding
- Multiple missing values; we used `fillna()` to replace all null values with NA and dropped one column with over 1000 null values

![Alt text](images/FeatureEngineering.PNG)

![Alt text](images/FeatureEngineering1.PNG)

![Alt text](images/FeatureEngineering2.PNG)

## Database


First, an ERD was created with QuickDB to create the tables, columns, and primary/foreign keys to use for the database. 


![Alt text](images/Database.PNG)


This ERD was then exported into PGAdmin to create the Team_Two Database.  After the schema was created, the data from the Mental_Health_Data.csv was imported into the appropriate tables: EMPLOYEES, and MENTAL_HEALTH. 


The EMPLOYEES table consists of: 

- ID, AGE, GENDER, COUNTRY_WORKING_IN, WFH columns.  

The MENTAL_HEALTH table consists of: 

- TECH_COMPANY, 
- MENTAL_HEALTH_OPTIONS_UNDER_COVERAGE, 
- EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES, 
- MEDICAL_COVERAGE_INCLUDING_MENTAL_HEALTH_TREATMENT, 
- PREV_EMPLOYERS_PROVIDE_MENTAL_HEALTH_BENEFITS
- AWARENESS_OF_MENTAL_HEALTH_COVERAGE_BY_PREV_EMPLOYERS, 
- PREV_EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES, 
- MENTAL_HEALTH_IDENTITY_HURT_CAREER, 
- CURRENT_MENTAL_HEALTH_DISORDER columns.

![FinalDB1](https://user-images.githubusercontent.com/45715246/232633558-4deff047-08e6-4191-8f1e-e4f8c6bc0228.png)

![FinalDB2](https://user-images.githubusercontent.com/45715246/232633577-0290d48b-cd6d-441c-99a2-7eea74239909.png)



By using the query tool in PGAdmin, a join between the EMPLOYEES table, and the MENTAL_HEALTH table on the ID column was completed.  Below are the results:

![Screenshot 2023-04-26 172055](https://user-images.githubusercontent.com/45715246/234706271-1d507509-0b1d-4a42-96c2-3d66a0db9134.png)



## Part 2 - Model and Analysis


### Training and Testing Sets

The training and testing sets were selected using `scikit learn’s` `train_test_split()`.

### Machine Learning Model

The output to our question is a binary.  In this case, yes or no are our binary outputs. Our data included a lot of categorical data, so an encoder was required.  Originally, we used the one hot encoder. The outputs of our model showed little to no variation between different algorithms.  We swapped to an ordinal encoder, and the results between algorithms showed more variation.  This is important to establish the reliability of our algorithm.

Classification algorithms are know to accurately predict binary outputs, so that is where we started our algorithm search.  There are several common classification algorithms such as logistic regression and random forests.  The team decided to start with logistic regression, and based on the results it did an okay job at predicting the proper result based on our train and test split.  The logical next step was to try out the random forest.  The results were better as hyper-parameters were not optimized.

Hyperparameter training was ran on several different algorithms.  A machine learning [website](https://machinelearningmastery.com/hyperparameters-for-classification-machine-learning-algorithms/) was referenced in help to finding out on how to optimizing classification algorithms.  After hyperparameter training, the GradientBoostingClassifier and [XGBClassifier](https://www.kaggle.com/code/faressayah/hyperparameter-optimization-for-machine-learning?scriptVersionId=118252459) algorithm turned out to be the best by accuracy score. SVC,Ridge and KNeighborsClassifier were also trained and tested. Keras tuner was also used for a neural network.

### Results

The gradient boosting and XGBClassifier model showed a 0.83 accuracy score.  To simply the model, survey answers were bucketed in two groups.  Zero has been classified as no, and one has been classified as yes.   Based on our problem statement, precision would be a way to measure how accurately the model classifies if someone has mental health coverage. Recall for our problem statement would be to accurately identify someone who has mental health coverage.  Both recall and precision were decent for this model.  This could be due to the limited dataset that had a skewed bias to more no responses to our question than yes responses.

![ML](images/FP_ML_acc.png)

The gradient boosting model showed a 0.83 accuracy score.

![ML](images/FP_ML_acc.png)


## Part 3 - Summary

## Storyboard

![story board](images/FP_storyboard.png)

### Tableau Dashboard 

https://public.tableau.com/app/profile/stacey.marotta/viz/Mental_Health_FP/Dashboard1?publish=yes


![Dashboard](images/FP_Tableau_Dash.png)


### Reflections and Recommendations for Future Analyses

While reflecting on this project, we had concerns that our dataset would be to small, or inefficient due to all of the null values in each column and row. One thing that we would do differently is combine multiple datasets.

Recommendations for Future Analyses
1. Does working remotely have a positive or negative impact on one's mental health and employment?
2. Do you find your employer is supportive of you and your mental health needs?
3. Do companies support employees' mental health when working from home?
4. Does having a mental health disorder have negative consequences in the workplace?  

