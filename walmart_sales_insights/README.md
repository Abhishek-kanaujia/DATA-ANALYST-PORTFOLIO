# Walmart Sales Data Analysis

## Overview
This project focuses on analyzing Walmart sales data to extract actionable business insights that can help improve decision-making and strategy. By leveraging tools like Pandas for data cleaning and transformation, pandasql for SQL-based queries, and Matplotlib for visualizing trends and patterns, this project provides valuable insights into various aspects of Walmart's sales operations.

The analysis addresses key business questions related to sales performance, revenue trends, customer behavior, product preferences, and more.

## Table of Contents

1. [Project Objectives](#project-objectives)
2. [Tools and Libraries Used](#tools-and-libraries-used)
3. [Project Steps](#project-steps)
4. [Key Insights & Results](#key-insights--results)
5. [Actionable Insights & Recommendations](#actionable-insights--recommendations)
6. [Conclusion & Next Steps](#conclusion--next-steps)
7. [Acknowledgement](#acknowledgement)
8. [Disclaimer](#disclaimer)
9. [License](#license)

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

## Project Steps
1. **Loading Data**
   The first step involves loading the data into a Pandas DataFrame to facilitate initial exploration and transformation. The dataset is loaded, and basic operations like checking the shape and inspecting the first few records are performed.

2. **Exploring the Data**
   An initial exploration of the dataset helps us understand its structure, identify any potential issues, and get an overview of its distribution. Key functions such as `.info()`, `.describe()`, and `.head()` are used to gather insights into column names, data types, and summary statistics.

3. **Data Cleaning**
   Data cleaning ensures that the dataset is in a usable form for analysis. The following tasks were performed:
   - **Remove Duplicates**: Duplicate records were identified and removed.
   - **Handle Missing Values**: Missing values were found to be minimal, so they were dropped to ensure the integrity of the analysis without losing significant data.
   - **Fix Data Types**: Data types were adjusted where necessary (e.g., converting date columns to datetime format, numeric columns to float).
   - **Currency Formatting**: Currency values were standardized for consistency.
   - **Validation**: A final review was conducted to ensure that the data was cleaned and ready for analysis.

4. **Feature Engineering**
   New features were created to enrich the dataset and facilitate deeper insights:
   - **Total Amount**: Calculated by multiplying unit_price by quantity.
   - **Month and Year**: Extracted from the date column to analyze sales trends over time.
   - **Profit**: Derived by multiplying total_amount by profit_margin.
   - **Day Name**: Extracted to analyze sales by the day of the week.
   - **Hour**: Extracted from the time column to examine sales patterns by time of day.

5. **SQL Analysis: Complex Queries & Business Problem Solving**
   SQL queries were employed to answer critical business questions and solve key problems, including:
   - Analyzing revenue trends across branches and product categories.
   - Identifying best-selling product categories.
   - Investigating sales performance based on payment method, time, and city.
   - Examining peak sales periods and customer buying behavior.
   - Conducting profit margin analysis by branch and category.

6. **Data Visualization and Insight Generation**
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
Data Source: This project uses the [Walmart Sales Dataset](https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets) provided by Najir 0123, licensed under the [MIT License](https://opensource.org/licenses/MIT).
## Disclaimer
This project is an **independent analysis** using publicly available data from Kaggle. It is **not affiliated with or endorsed by Walmart, Inc.** The name "Walmart" is used for educational and analysis purposes only.

## License
The dataset used in this project is licensed under the **MIT License**. For more details, see the full license at [MIT License](https://opensource.org/licenses/MIT).
