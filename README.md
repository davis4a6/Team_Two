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

3. Plots

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

- Our target was a categorical value as well, so we converted it to an integer to avoid being encoded

![Alt text](images/FeatureEngineering3.PNG)

![Alt text](images/FeatureEngineering4.PNG)

### Database

The data was placed into two separate tables: 
- EMPLOYEES, and MENTAL_HEALTH. 

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

![Alt text](images/Database.PNG)

## Part 2 - Model and Analysis

### Training and Testing Sets

The training and testing sets were selected using `scikit learn’s` `train_test_split()`.
Random seed 42 was selected as it’s the answer to the “Great Question” of “Life, the Universe and Everything”.

### Machine Learning Model

### Results

The model showed a XX accuracy score. This shows that when it comes to predicting whether a company provides mental health coverage as a benefit...

## Part 3 - Summary

### Storyboard

### Dashboard Demo

![Alt text](images/DashboardDemo.PNG)

### Reflections and Recommendations for Future Analyses

While reflecting on this project, we had concerns that our dataset would be to small, or inefficient due to all of the null values in each column and row. One thing that we would do differently is combine multiple datasets.

Recommendations for Future Analyses
1. Does working remotely have a positive or negative impact on one's mental health and employment?
2. Do you find your employer is supportive of you and your mental health needs?
3. Do companies support employees' mental health when working from home?
4. Does having a mental health disorder have negative consequences in the workplace?  

