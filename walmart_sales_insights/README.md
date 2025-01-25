# Walmart Sales Data Analysis

**Description:** This project analyzes Walmart sales data to extract actionable business insights. By leveraging pandas for data cleaning and transformation, along with pandasql for advanced querying, I address key business questions using structured problem-solving techniques. I use the matplotlib library to visualize trends and patterns, providing valuable insights that can inform decision-making and strategy.
## Project Steps:
### 1. **Loading Data**
   - **Objective**: Load the data into a Pandas DataFrame for initial analysis and transformations.

### 2. **Exploring the Data**
   - **Objective**: Perform an initial exploration of the dataset to understand its structure and identify potential issues.
   - **Process**: Use functions like `.info()`, `.describe()`, and `.head()` to gain insights into the data distribution, column names, and data types.

### 3. **Data Cleaning**
   - **Remove Duplicates**: Identify and eliminate duplicate records to ensure the integrity of the analysis.
   - **Handle Missing Values**: Depending on the significance, drop or impute missing values to ensure clean, usable data.
   - **Fix Data Types**: Ensure that all columns have appropriate data types (e.g., dates are in `datetime` format, prices are in `float` format).
   - **Currency Formatting**: Standardize currency values using `.replace()` to facilitate accurate analysis.
   - **Validation**: Review the cleaned data for any remaining inconsistencies and verify that the dataset is ready for analysis.
### 4. **Feature Engineering**
- **Create New Columns**: Introduce new calculated fields to enrich the dataset:
  - **Total Amount**: Calculated by multiplying `unit_price` by `quantity`.
  - **Month and Year**: Extract the month and year from the `date` column for time-based analysis.
  - **Profit**: Calculated by multiplying `total_amount` by `profit_margin`.
  - **Day Name**: Extract the day name from the `date` column to analyze sales by day of the week.
  - **Hour**: Extract the hour from the `time` column to analyze sales by time of day.

### 5. **SQL Analysis: Complex Queries and Business Problem Solving**
   - **Objective**: Use SQL to solve key business problems and answer critical questions, including:
     - Analyzing revenue trends across branches and categories.
     - Identifying best-selling product categories.
     - Analyzing sales performance by time, city, and payment method.
     - Examining peak sales periods and customer buying patterns.
     - Conducting profit margin analysis by branch and category.

### 6. **Data Visualization and Insight Generation**
   - **Objective**: Visualize key trends and insights using appropriate charts and graphs to communicate the findings effectively.
## Results and Insights

- **Credit Card Transactions**: Credit cards dominate in both transaction volume and quantity sold, indicating a strong preference for this payment method at specific branches.
- **Customer Preferences**: Satisfaction varies by branch, with top-rated categories suggesting areas for improvement and targeted marketing.
- **Peak Transaction Days**: Sales peak on weekends and specific weekdays, providing insights for optimal staffing and inventory management.
- **Payment Method Preferences**: Credit cards are the most preferred payment method, followed by e-wallets and cash, highlighting opportunities to enhance digital payment systems.
- **Regional Product Preferences**: Product ratings, especially in 'Health and Beauty,' differ by city, offering opportunities to tailor offerings by region.
- **Revenue Drivers**: 'Fashion accessories' and 'Home and lifestyle' categories are the leading revenue generators.
- **Sales Trends by Time**: Peak transaction volumes occur in the afternoon and evening, particularly during evening hours, indicating a need for tailored staffing and inventory.
- **Branch Revenue Decline**: Revenue has significantly declined in branches like WALM045 and WALM047, requiring targeted recovery strategies.
- **Monthly Sales Fluctuations**: Sales fluctuate monthly, with higher sales during seasonal peaks or promotions, offering insights for future strategies.
- **Top Branches**: The top 20 branches contribute most of the sales, suggesting a focus on scalability and resource allocation for underperforming locations.
- **Category Revenue Performance**: 'Fashion accessories' and 'Home and lifestyle' drive the most revenue, warranting prioritization in marketing and inventory.
- **Category Ratings**: 'Food and beverages' and 'Health and beauty' receive the highest ratings, while 'Fashion accessories' may need improvements.
- **Peak Shopping Hours**: Sales peak between 15:00 and 20:00, with a significant decline late-night, indicating the need for strategic staffing and promotions during peak hours.
- **Weekend Sales**: Saturdays see the highest sales, followed by Fridays and Sundays, suggesting a focus on promotions and staffing for weekend shoppers.
## Acknowledgement
Data Source: Kaggle’s [Walmart Sales Dataset](https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets)
Certainly! Here's a well-structured and polished README file based on the details you provided:

---

# Walmart Sales Data Analysis

## Overview

This project focuses on analyzing Walmart sales data to extract actionable business insights that can help improve decision-making and strategy. By leveraging tools like **Pandas** for data cleaning and transformation, **pandasql** for SQL-based queries, and **Matplotlib** for visualizing trends and patterns, this project provides valuable insights into various aspects of Walmart's sales operations.

The analysis addresses key business questions related to sales performance, revenue trends, customer behavior, product preferences, and more.

## Table of Contents

1. [Project Objectives](#project-objectives)  
2. [Tools and Libraries Used](#tools-and-libraries-used)  
3. [Project Steps](#project-steps)  
4. [Key Insights & Results](#key-insights--results)  
5. [Actionable Insights & Recommendations](#actionable-insights--recommendations)  
6. [Conclusion & Next Steps](#conclusion--next-steps)  
7. [Acknowledgement](#acknowledgement)  

## Project Objectives

The goal of this project is to uncover meaningful insights from Walmart’s sales data that can guide business strategy, optimize operations, and improve customer experience. Specifically, we aim to answer the following questions:

- What are the trends in revenue across different branches and product categories?
- How do sales patterns vary by time of day, day of the week, and payment method?
- Which branches or products are underperforming and may require strategic adjustments?
- What are customer preferences in different regions, and how do these impact product ratings?

## Tools and Libraries Used

- **Python**: The primary programming language for this project.
- **Pandas**: Used for data manipulation, cleaning, and transformation.
- **pandasql**: A SQL library for querying Pandas DataFrames, providing advanced querying capabilities.
- **Matplotlib**: Utilized for data visualization, helping to identify trends and patterns in the data.
- **Numpy**: Used for numerical operations where necessary.
- **Seaborn**: Optional for advanced visualizations.

## Project Steps

### 1. Loading Data

The first step involves loading the data into a **Pandas DataFrame** to facilitate initial exploration and transformation. The dataset is loaded, and basic operations like checking the shape and inspecting the first few records are performed.

### 2. Exploring the Data

An initial exploration of the dataset helps us understand its structure, identify any potential issues, and get an overview of its distribution. Key functions such as `.info()`, `.describe()`, and `.head()` are used to gather insights into column names, data types, and summary statistics.

### 3. Data Cleaning

Data cleaning ensures that the dataset is in a usable form for analysis. The following tasks were performed:

- **Remove Duplicates**: Duplicate records were identified and removed.
- **Handle Missing Values**: Missing values were either dropped or imputed, depending on their significance.
- **Fix Data Types**: Data types were adjusted where necessary (e.g., converting date columns to datetime format, numeric columns to float).
- **Currency Formatting**: Currency values were standardized for consistency.
- **Validation**: A final review was conducted to ensure that the data was cleaned and ready for analysis.

### 4. Feature Engineering

New features were created to enrich the dataset and facilitate deeper insights:

- **Total Amount**: Calculated by multiplying `unit_price` by `quantity`.
- **Month and Year**: Extracted from the date column to analyze sales trends over time.
- **Profit**: Derived by multiplying `total_amount` by `profit_margin`.
- **Day Name**: Extracted to analyze sales by the day of the week.
- **Hour**: Extracted from the time column to examine sales patterns by time of day.

### 5. SQL Analysis: Complex Queries & Business Problem Solving

SQL queries were employed to answer critical business questions and solve key problems, including:

- Analyzing revenue trends across branches and product categories.
- Identifying best-selling product categories.
- Investigating sales performance based on payment method, time, and city.
- Examining peak sales periods and customer buying behavior.
- Conducting profit margin analysis by branch and category.

### 6. Data Visualization and Insight Generation

Various visualizations were created to highlight important trends and patterns in the data:

- **Revenue Trends**: Line graphs were used to visualize revenue over time.
- **Sales by Category**: Bar charts helped compare performance across product categories.
- **Sales by Time of Day**: Heatmaps were created to analyze peak sales hours.
- **Customer Preferences**: Pie charts and bar plots were used to visualize preferred payment methods and product ratings.

## Key Insights & Results

- **Credit Card Transactions**: Credit cards are the dominant payment method, indicating a strong preference for this option across branches.
- **Customer Preferences**: Satisfaction levels vary by branch, with certain categories (like 'Health and Beauty') receiving high ratings.
- **Peak Transaction Days**: Sales peak on weekends and specific weekdays, highlighting the need for optimal staffing during these times.
- **Regional Product Preferences**: There are noticeable differences in product ratings across cities, indicating that regional preferences influence purchasing decisions.
- **Revenue Drivers**: The 'Fashion accessories' and 'Home and lifestyle' categories are the top revenue generators.
- **Sales Trends by Time**: Peak sales occur during the afternoon and evening hours, suggesting a need for targeted promotions and staffing during these times.
- **Branch Revenue Decline**: Branches like WALM045 and WALM047 have seen a significant decline in revenue, requiring targeted recovery strategies.
- **Monthly Sales Fluctuations**: Sales fluctuate monthly, with seasonal peaks providing insights for future promotions and marketing campaigns.
- **Top Branches**: The top 20 branches account for most of the sales, signaling the need to optimize resources for underperforming locations.

## Actionable Insights & Recommendations

- **Digital Payment Systems**: Invest in improving digital payment options (especially credit cards) across branches.
- **Targeted Marketing**: Focus on promoting high-performing categories like 'Fashion accessories' and 'Home and lifestyle'.
- **Regional Tailoring**: Customize product offerings based on regional preferences, particularly in 'Health and Beauty' and 'Food and Beverages'.
- **Optimized Staffing**: Ensure staffing is optimized during peak sales hours (15:00-20:00) and on weekends (especially Saturdays).
- **Focus on Underperforming Branches**: Develop targeted recovery strategies for branches experiencing a revenue decline, such as WALM045 and WALM047.
- **Seasonal Campaigns**: Leverage seasonal fluctuations by preparing for higher sales during peak periods (e.g., holidays, promotions).

## Conclusion & Next Steps

This analysis provides valuable insights into Walmart’s sales trends and customer preferences. Moving forward, the next steps could include:

- **Customer Segmentation**: Analyze customer demographics to further refine marketing strategies.
- **Predictive Modeling**: Implement machine learning techniques to predict future sales trends based on historical data.
- **Product Performance**: Conduct a deeper dive into the performance of individual products to identify those that need more promotion or discontinuation.

## Acknowledgement

Data Source: Kaggle’s [Walmart Sales Dataset](https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets)

