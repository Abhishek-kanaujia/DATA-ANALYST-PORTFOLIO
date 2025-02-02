# Telco Customer Churn Analysis with SQL, Power BI, and Machine Learning

## Overview

This repository contains a data analysis and machine learning project focused on predicting customer churn for a telecommunications company. The project uses SQL for data cleaning and preprocessing, Power Query and DAX in Power BI for data transformation and visualization, and machine learning algorithms for churn prediction. The final result is an interactive dashboard that provides insights into customer churn and predictions.

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
- **Monthly Charge Range:** A new column is created to categorize `Monthly_Charge` into ranges: "< 20", "20-50", "50-100", and "> 100".

#### Age Group Mapping (Mapping_AgeGrp):
- A new table is created for age groups based on the `Age` column, categorized into groups: "< 20", "20-35", "36-50", and "> 50".
- The `AgeGrpSorting` column is created to assign a numeric value to each group for sorting purposes.

#### Tenure Group Mapping (Mapping_TenureGrp):
- A new table is created for tenure groups based on `Tenure_in_Months`, categorized into ranges: "< 6 Months", "6-12 Months", "12-18 Months", "18-24 Months", and ">= 24 Months".
- The `TenureGrpSorting` column is created for sorting these groups numerically.

#### Service Unpivot (Mapping_Services):
- All service-related columns (e.g., Streaming_TV, Phone_Service) are unpivoted into a `Services` column, with a corresponding `Status` column indicating whether the service is active or not.

### 3. **Power BI Dashboard Creation**

#### Churn Dashboard:
An interactive dashboard is created in Power BI to visualize customer churn insights, including:
- **Total Customers:** Count of all customers in the dataset.
- **New Joiners:** Count of customers who joined the service.
- **Total Churn:** Count of churned customers (based on the Churn Status column).
- **Churn Rate:** The percentage of churned customers relative to the total customer base.

#### Churn Prediction Dashboard:
A separate dashboard is created to visualize the predictions for churn:
- **Predicted Churners:** A count of customers predicted to churn based on machine learning models (using the Predictions table).
- **Predicted Churn Rate:** A title that dynamically updates to reflect the count of predicted churners.

### 4. **Machine Learning for Churn Prediction**

#### Model Building:
Machine learning algorithms (e.g., Logistic Regression, Decision Trees) are applied to predict churn using the cleaned data from the `prod_Churn` table.
- Features like `Monthly_Charge`, `Tenure_in_Months`, and `Age` are used to train the model.

#### Model Evaluation:
The model is evaluated using common metrics such as accuracy, precision, recall, and ROC-AUC to ensure the effectiveness of the churn prediction model.

## Files & Folders

- **SQL_Scripts:**  
  All SQL scripts for data preparation, cleaning, exploration, and creating views are in this folder.

- **PowerBI:**  
  Power BI file(s) that include the transformations, measures, and dashboards for the churn analysis and prediction.

- **Machine_Learning:**  
  Python scripts or Jupyter notebooks (if applicable) for training the churn prediction model.

## Requirements

### SQL Setup
- PostgreSQL or any SQL-compatible database.
- Import the CSV data into the `customer_data` table.

### Power BI Setup
- Power BI Desktop installed.
- The `prod_Churn` table and machine learning model predictions are needed to load into Power BI.

### Machine Learning (Optional)
- Python 3.x
- Libraries:
  - `pandas`
  - `scikit-learn`
  - `numpy`
  - `matplotlib`, `seaborn` (for visualizations)

## Instructions to Run

### 1. **Setting Up the Database**
- Create the `customer_data` table and load the data using the `COPY` command.
- Run the SQL queries for data exploration and cleaning (e.g., creating `prod_Churn`).

### 2. **Power BI Transformations**
- Import the `prod_Churn` table into Power BI.
- Apply the Power Query transformations to add the necessary columns and create the reference tables for age and tenure groups.
- Create the necessary measures for churn insights.

### 3. **Building the Model**
- Load the cleaned data from `prod_Churn` into your machine learning environment.
- Train the churn prediction model using relevant features.
- Save the predictions to a new table, `Predictions`.

### 4. **Power BI Dashboard**
- Import the model predictions into Power BI.
- Create the interactive dashboards for churn analysis and churn predictions.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgements
- **Data source:** [Add source of your dataset]
- **Tools used:** PostgreSQL, Power BI, Python (for machine learning)
- Special thanks to [Add any additional acknowledgements here].

