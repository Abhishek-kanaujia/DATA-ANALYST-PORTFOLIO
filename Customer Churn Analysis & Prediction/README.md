# Telco Customer Churn Analysis with SQL, Power BI, and Machine Learning

## Table of Contents

1. [Overview](#overview)
2. [Tools Used](#tools-used)
3. [Project Flow](#project-flow)
   1. [SQL Data Preprocessing](#sql-data-preprocessing)
   2. [Power BI Data Transformations (Power Query)](#power-bi-data-transformations-power-query)
   3. [Power BI Dashboard Creation](#power-bi-dashboard-creation)
   4. [Machine Learning for Churn Prediction](#machine-learning-for-churn-prediction)
4. [Key Insights & Results](#key-insights--results)
5. [Actionable Insights & Recommendations](#actionable-insights--recommendations)
6. [Requirements](#requirements)
   1. [SQL Setup](#sql-setup)
   2. [Power BI Setup](#power-bi-setup)
   3. [Machine Learning](#machine-learning)
7. [Instructions to Run](#instructions-to-run)
   1. [Setting Up the Database](#setting-up-the-database)
   2. [Power BI Transformations](#power-bi-transformations)
   3. [Building the Model](#building-the-model)
   4. [Power BI Dashboard](#power-bi-dashboard)

## Overview

This is a data analysis and machine learning project focused on predicting customer churn for a telecommunications company. The project uses SQL for data cleaning and preprocessing, Power Query and DAX in Power BI for data transformation and visualization, and machine learning algorithms for churn prediction. The final result is an interactive dashboard that provides insights into customer churn and predictions.

## Tools Used:
PostgreSQL, Power BI, Python (for machine learning)

## Project Flow

### 1. **SQL Data Preprocessing**

#### Table Creation & Data Import:
The project starts by creating a `customer_data` table to store customer attributes, such as service usage, billing information, and churn status. Data is imported from a CSV file into the database using the `COPY` command.

#### Exploratory Data Analysis (EDA):
Several SQL queries are used to explore the data:
- **Distinct Values:** The distribution of attributes like Gender, Contract, State, and Customer_Status is checked.
- **Null Value Identification:** A query counts the number of null values in each column, identifying missing or incomplete data.
- **Revenue Analysis:** The total revenue is calculated for different customer statuses.

#### Data Cleansing:
A new table, `prod_Churn`, is created to handle missing values by replacing them with default values like 'None' or 'No'.

### 2. **Power BI Data Transformations (Power Query)**

#### Churn Status Transformation:
- **Churn Status:** A new column is added to the `prod_Churn` table to create a binary value for churn status (1 for "Churned", 0 for "Stayed").
- **Change Data Type:** The data type for Churn Status is changed to a number for further analysis.

#### Monthly Charge Range Transformation:
- **Monthly Charge Range:** A new column is created to categorize `monthly_charge_range` into ranges: "< 20", "20-50", "50-100", and "> 100".

#### Age Group Mapping (Mapping_AgeGrp):
- A new table is created for age groups based on the `age` column, categorized into groups: "< 20", "20-35", "36-50", and "> 50".
- The `AgeGrpSorting` column is created to assign a numeric value to each group for sorting purposes.

#### Tenure Group Mapping (Mapping_TenureGrp):
- A new table is created for tenure groups based on `tenure_in_months`, categorized into ranges: "< 6 Months", "6-12 Months", "12-18 Months", "18-24 Months", and ">= 24 Months".
- The `TenureGrpSorting` column is created for sorting these groups numerically.

### 3. **Power BI Dashboard Creation**

#### Churn Trends & Insights Dashboard:

An interactive Power BI dashboard is created to visualize customer churn insights, focusing on identifying patterns and factors affecting customer retention. The dashboard includes the following visualizations:

- **Total Customers**: Count of all customers in the dataset.
- **New Joiners**: Count of customers who joined the service.
- **Total Churn**: Count of churned customers (based on the Churn Status column).
- **Churn Rate**: The percentage of churned customers relative to the total customer base.

![Churn Trends & Insights](https://github.com/Abhishek-kanaujia/DATA-ANALYST-PORTFOLIO/blob/main/Customer%20Churn%20Analysis%20%26%20Prediction/ChurnTrends%26Insights.jpeg)

### 4. **Machine Learning for Churn Prediction**

#### Model Building:
Machine learning algorithm (Random Forest) is applied to predict churn using the cleaned data from the `prod_Churn` table.
- Features like `monthly_charge`, `tenure_in_months`, and `age` are used to train the model.

#### Model Evaluation:
The model is evaluated using common metrics such as accuracy, precision, recall, f1 score and support to ensure the effectiveness of the churn prediction model.

## Key Insights & Results

**Overall Metrics**:
- **Total Customers**: 6,418
- **New Joiners**: 411
- **Total Churn**: 1,732
- **Churn Rate**: 27%

**Churn Rate Insights**:
- **By Internet Type**:
  - **Fiber Optic**: 41.10% (Highest churn rate)
  - **Cable**: 25.72%
  - **DSL**: 19.37%
  - **None**: 7.84% (Lowest churn rate)
  
- **By Contract**:
  - **Month-to-Month**: 46.53% (Significantly high churn rate)
  - **One Year**: 11.04%
  - **Two Year**: Very low churn (exact percentage not shown)
  
- **By Payment Method**:
  - **Mailed Check**: 37.82% (Highest churn rate)
  - **Bank Withdrawal**: 34.43%
  - **Credit Card**: 14.80% (Lowest churn rate)

**Demographic Insights**:
- **By Gender**:
  - **Male**: 64% of total churn
  - **Female**: 36% of total churn
  
- **By Age Group**:
  - **Under 20**: Low churn rate
  - **20-35 & 36-50**: Moderate churn rate
  - **Over 50**: Highest churn rate (over 30%)
  
- **By State**:
  - **Jammu & Kashmir**: 57.19% (Highest churn rate)
  - **Assam**: 38.13%
  - **Jharkhand**: 34.51%
  - **Chhattisgarh**: 30.51%
  - **Delhi**: 29.92%

**Churn by Tenure**:
- **< 6 Months**: Moderate churn rate
- **6-12 Months**: Higher churn rate
- **12-18 Months**: Dip in churn rate
- **18-24 Months**: Slight increase
- **≥ 24 Months**: Highest churn rate among tenure groups

**Churn Categories**:
- **Competitor**: 761 churns (Major reason)
- **Attitude**: 301 churns
- **Dissatisfaction**: 300 churns
- **Price**: 196 churns
- **Other**: 174 churns

## Actionable Insights & Recommendations

1. **Focus on Retaining Fiber Optic Customers**
   - **Insight**: Fiber Optic customers have the highest churn rate (41.10%).
   - **Recommendation**: Target Fiber Optic customers with retention strategies such as personalized offers, service improvements, and loyalty programs to lower churn.

2. **Improve Retention for Month-to-Month Contracts**
   - **Insight**: Month-to-Month contracts exhibit the highest churn rate (46.53%).
   - **Recommendation**: Offer incentives for customers to upgrade to longer-term contracts (One Year or Two Year), such as discounts or exclusive benefits.

3. **Incentivize Credit Card Payments**
   - **Insight**: Credit Card payments correlate with the lowest churn rate (14.80%).
   - **Recommendation**: Encourage customers to use Credit Card payment options by offering additional rewards or benefits for those who choose this payment method.

4. **Target Male and Older Customers (50+) for Retention**
   - **Insight**: Males account for 64% of churn, and customers over 50 years old have the highest churn rate (over 30%).
   - **Recommendation**: Create targeted retention campaigns for male customers and those aged 50+ that address their specific concerns and offer tailored solutions.

5. **Focus on High Churn States**
   - **Insight**: Jammu & Kashmir, Assam, Jharkhand, Chhattisgarh, and Delhi have the highest churn rates.
   - **Recommendation**: Implement region-specific retention strategies to address unique local challenges and reduce churn in these states.

6. **Address Competitor-Related Churn**
   - **Insight**: The primary churn reason is competition (761 churns).
   - **Recommendation**: Enhance competitive advantage by introducing new features, improving customer service, or offering better pricing structures.

## Requirements

### 1. **SQL Setup**
- PostgreSQL or any SQL-compatible database.
- Import the customer data into the `customer_data` table using the `COPY` command.

### 2. **Power BI Setup**
- Power BI Desktop installed.
- Import the `prod_Churn` table into Power BI for data transformation and dashboard creation.

### 3. **Machine Learning Setup**
- **Python**: For training the churn prediction model.
- Required Python libraries:
  - `pandas`
  - `psycopg2`
  - `scikit-learn`
  - `numpy`
  - `matplotlib`, `seaborn` (for visualizations)

## Instructions to Run

### 1. **Setting Up the Database**
- Create the `customer_data` table and load the data using the `COPY` command.
- Run SQL queries for data exploration and create the `prod_Churn` table for cleaning.

### 2. **Power BI Transformations**
- Import the cleaned data (`prod_Churn`) into Power BI.
- Apply necessary transformations to add columns for churn status, age groups, and tenure groups.

### 3. **Building the Model**
- Load the data from the `prod_Churn` table into your Python environment.
- Train the machine learning model using features such as `monthly_charge`, `tenure_in_months`, and `age`.
- Save churn predictions to a CSV file (`churnPredictions`).

### 4. **Power BI Dashboard**
- Import churn predictions into Power BI.
- Create the churn prediction dashboard with interactive features to display the predicted churn rate and associated factors.
