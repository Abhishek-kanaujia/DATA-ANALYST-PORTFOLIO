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

### Churn Trends & Insights Dashboard:

An interactive Power BI dashboard is created to visualize customer churn insights, focusing on identifying patterns and factors affecting customer retention. The dashboard includes the following visualizations:

- **Total Customers**: Count of all customers in the dataset.
- **New Joiners**: Count of customers who joined the service.
- **Total Churn**: Count of churned customers (based on the Churn Status column).
- **Churn Rate**: The percentage of churned customers relative to the total customer base.
![Churn Trends & Insights](https://github.com/Abhishek-kanaujia/DATA-ANALYST-PORTFOLIO/blob/main/Customer%20Churn%20Analysis%20%26%20Prediction/ChurnTrends%26Insights.jpeg)

### Key Insights & Results

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

### Actionable Insights & Recommendations

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
   - **Recommendation**: Enhance competitive advantage by introducing new features, improving customer service, and offering competitive pricing to retain customers from switching to competitors.

7. **Leverage Customer Tenure Insights for Retention**
   - **Insight**: Customers with < 6 months, 6-12 months, and ≥ 24 months of tenure exhibit varying churn behaviors.
   - **Recommendation**: Introduce targeted retention programs for customers nearing 6 months or after 24 months of service to prevent churn in these periods.

8. **Address Price Sensitivity**
   - **Insight**: Price-related churn (196 churns) indicates some customers are leaving due to pricing concerns.
   - **Recommendation**: Review pricing structures, offer promotional discounts, or provide value-added services to reduce price-related churn.

By analyzing the churn trends, we can implement effective strategies to reduce customer turnover and enhance overall retention, particularly focusing on high-risk segments and demographics.

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

## Key Insights & Results

### **Overall Metrics:**
- **Count of Predicted Churners:** 376  

---

### **Predicted Churn Breakdown:**

**By Gender:**
- **Female:** 242 predicted churners *(Higher risk group)*  
- **Male:** 134 predicted churners  

---

**By Age Group:**
- **> 50 years:** 128 predicted churners *(Highest)*  
- **36-50 years:** 125 predicted churners  
- **20-35 years:** 111 predicted churners  
- **< 20 years:** Very low predicted churn  

---

**By State (Top 5 States with Highest Predicted Churn):**
- **Uttar Pradesh:** 42  
- **Maharashtra:** 39  
- **Tamil Nadu:** 37  
- **Karnataka:** 30  
- **Andhra Pradesh:** 24  

---

### **Churn Rate Insights:**

**By Internet Type:**
- **None:** 144 predicted churners *(Highest)*  
- **DSL:** 101 predicted churners  
- **Fiber Optic:** 81 predicted churners  
- **Cable:** 50 predicted churners *(Lowest)*  

---

**By Contract Type:**
- **Month-to-Month:** 356 predicted churners *(Overwhelmingly high churn)*  
- **One Year:** Very few predicted churners  
- **Two Year:** Very few predicted churners  

---

**By Payment Method:**
- **Credit Card:** 190 predicted churners *(Highest)*  
- **Bank Withdrawal:** 150 predicted churners  
- **Mailed Check:** 36 predicted churners *(Lowest)*  

---

### **Churn by Tenure Group:**
- **≥ 24 Months:** 107 predicted churners *(Highest)*  
- **6-12 Months:** 88 predicted churners  
- **< 6 Months:** 64 predicted churners  
- **18-24 Months:** 60 predicted churners  
- **12-18 Months:** 57 predicted churners *(Lowest)*  

---

### **Marital Status:**
- **Not Married:** 51% of predicted churners  
- **Married:** 49% of predicted churners  

---

### **Key Takeaways:**
- **Females** and customers aged **over 50** are more likely to churn.
- **Month-to-Month contracts** and **Credit Card payments** are strongly associated with predicted churn.
- Customers with **no internet service** show the highest predicted churn, followed by **DSL users**.
- **Uttar Pradesh** and **Maharashtra** have the highest number of predicted churners.
- **Long-tenure customers (≥ 24 months)** are at higher churn risk, contrary to common expectations.

---
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
