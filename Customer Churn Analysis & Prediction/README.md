# Telco Customer Churn Analysis with SQL, Power BI, and Machine Learning

## Overview

This is a data analysis and machine learning project focused on predicting customer churn for a telecommunications company. The project uses SQL for data cleaning and preprocessing, Power Query and DAX in Power BI for data transformation and visualization, and machine learning algorithms for churn prediction. The final result is an interactive dashboard that provides insights into customer churn and predictions.

## Tools used:
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

#### Churn Trends & Insights:
An interactive dashboard is created in Power BI to visualize customer churn insights, including:
- **Total Customers:** Count of all customers in the dataset.
- **New Joiners:** Count of customers who joined the service.
- **Total Churn:** Count of churned customers (based on the Churn Status column).
- **Churn Rate:** The percentage of churned customers relative to the total customer base.

![Churn Trends & Insights](https://github.com/Abhishek-kanaujia/DATA-ANALYST-PORTFOLIO/blob/main/Customer%20Churn%20Analysis%20%26%20Prediction/ChurnTrends%26Insights.jpeg)

##  Key Insights & Results

### **Overall Metrics:**
- **Total Customers:** 6,418  
- **New Joiners:** 411  
- **Total Churn:** 1,732  
- **Churn Rate:** 27%  

---

### **Churn Rate Insights:**

**By Internet Type:**
- **Fiber Optic:** 41.10% *(Highest churn rate)*  
- **Cable:** 25.72%  
- **DSL:** 19.37%  
- **None:** 7.84% *(Lowest churn rate)*  

**By Contract:**
- **Month-to-Month:** 46.53% *(Significantly high churn rate)*  
- **One Year:** 11.04%  
- **Two Year:** Very low churn *(exact percentage not shown)*  

**By Payment Method:**
- **Mailed Check:** 37.82% *(Highest churn rate)*  
- **Bank Withdrawal:** 34.43%  
- **Credit Card:** 14.80% *(Lowest churn rate)*  

---

### **Demographic Insights:**

**By Gender:**
- **Male:** 64% of total churn  
- **Female:** 36% of total churn  

**By Age Group:**
- **Under 20:** Low churn rate  
- **20-35 & 36-50:** Moderate churn rate  
- **Over 50:** Highest churn rate *(over 30%)*  

**By State:**
- **Jammu & Kashmir:** 57.19% *(Highest churn rate)*  
- **Assam:** 38.13%  
- **Jharkhand:** 34.51%  
- **Chhattisgarh:** 30.51%  
- **Delhi:** 29.92%  

---

### **Churn by Tenure:**
- **< 6 Months:** Moderate churn rate  
- **6-12 Months:** Higher churn rate  
- **12-18 Months:** Dip in churn rate  
- **18-24 Months:** Slight increase  
- **≥ 24 Months:** Highest churn rate among tenure groups  

---

### **Churn Categories:**
- **Competitor:** 761 churns *(Major reason)*  
- **Attitude:** 301 churns  
- **Dissatisfaction:** 300 churns  
- **Price:** 196 churns  
- **Other:** 174 churns  

---

### **Key Takeaways:**
- **Fiber Optic customers** and **Month-to-Month contracts** have the highest churn rates.
- **Credit Card payments** correlate with a lower churn rate, while **Mailed Check payments** see higher churn.
- Customers **over 50 years old** and those from **Jammu & Kashmir** are most likely to churn.
- **Competitor-related churn** is the most significant issue, suggesting strong competition in the market.

---

### 4. **Machine Learning for Churn Prediction**

#### Model Building:
Machine learning algorithm (Random Forest) is applied to predict churn using the cleaned data from the `prod_Churn` table.
- Features like `monthly_charge`, `tenure_in_months`, and `age` are used to train the model.

#### Model Evaluation:
The model is evaluated using common metrics such as accuracy, precision, recall, f1 score and support to ensure the effectiveness of the churn prediction model.

### 5. **Power BI Dashboard Creation**

#### Churn Prediction Dashboard:
A separate dashboard is created to visualize the predictions for churn:
- **Predicted Churners:** A count of customers predicted to churn based on machine learning models (using the Predictions table).
- **Predicted Churn Rate:** A title that dynamically updates to reflect the count of predicted churners.

![Churn Prediction Dashboard](https://github.com/Abhishek-kanaujia/DATA-ANALYST-PORTFOLIO/blob/main/Customer%20Churn%20Analysis%20%26%20Prediction/ChurnPredictionDashboard.jpeg)

## Requirements

### SQL Setup
- PostgreSQL or any SQL-compatible database.
- Import the CSV data into the `customer_data` table.

### Power BI Setup
- Power BI Desktop installed.
- The `prod_Churn` table and machine learning model predictions are needed to load into Power BI.

### Machine Learning
- Python 
- Libraries:
  - `pandas`
  - `psycopg2`
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
- Save the predictions to a new csv file, `churnPredictions`.

### 4. **Power BI Dashboard**
- Import the model predictions into Power BI.
- Create the interactive dashboards for churn analysis and churn predictions.
