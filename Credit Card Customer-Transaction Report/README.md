# Credit Card Customer-Transaction Report

## Purpose
This project aims to analyze customer transaction data for a credit card company to uncover meaningful insights and trends. The goal is to help the company make data-driven decisions to improve customer experience, optimize operations, and increase revenue.

## Project Objectives
- Understand customer spending patterns.
- Identify high-value customers and their transaction behavior.
- Analyze transaction trends across different demographics.
- Provide actionable recommendations to enhance business strategy.

## Tools and Libraries Used
- **Power BI**: Used to design interactive dashboards and analyze data.
- **Microsoft Excel**: Utilized for initial data preparation and cleaning.

## Steps

1. **Data Collection and Preparation**: 
   - Gathered customer transaction data and demographic information from multiple sources.
   - Cleaned and pre-processed data using Microsoft Excel to handle missing values, remove outliers, and standardize formats for consistency.

2. **Data Modeling and Relationship Building**: 
   - Designed data models in Power BI to structure relationships between different datasets (e.g., customer demographics, transaction history, and revenue data).
   - Established key metrics such as customer segmentation (age, income group) and transaction performance to support deeper analysis.

3. **DAX Query Implementation**:
   - Applied custom DAX calculations for key metrics like customer age and income group segmentation.
   - Developed measures for revenue calculation, weekly trends, and comparison of current versus previous week’s performance, helping to analyze revenue growth.

4. **Dashboard Design and Visualization**: 
   - Built interactive Power BI dashboards to visually represent key insights, ensuring they are easy to interpret for stakeholders and decision-makers.
   - Incorporated slicers and filters to allow users to drill down into specific customer segments, regions, and time periods.

5. **Analysis and Insights**: 
   - Conducted in-depth analysis of the data to uncover trends and insights such as high-value customer segments, seasonal transaction patterns, and geographic revenue distribution.
   - Developed actionable recommendations based on the analysis to optimize marketing efforts, reduce delinquency rates, and increase revenue generation.

## DAX Queries

The following DAX queries were used to enhance the analysis and segmentation in the project:

### **Age Group Classification**
To categorize customers based on their age, the following DAX formula was used:

```DAX
AgeGroup = SWITCH(
    TRUE(),
    'public cust_detail'[customer_age] < 30, "20-30",
    'public cust_detail'[customer_age] >= 30 && 'public cust_detail'[customer_age] < 40, "30-40",
    'public cust_detail'[customer_age] >= 40 && 'public cust_detail'[customer_age] < 50, "40-50",
    'public cust_detail'[customer_age] >= 50 && 'public cust_detail'[customer_age] < 60, "50-60",
    'public cust_detail'[customer_age] >= 60, "60+",
    "unknown"
)
```
This formula classifies customers into distinct age groups to better understand customer behavior across different age ranges.

### **Income Group Classification**
To categorize customers into income groups:

```DAX
IncomeGroup = SWITCH(
    TRUE(),
    'public cust_detail'[income] < 35000, "LOW",
    'public cust_detail'[income] >= 35000 && 'public cust_detail'[income] < 70000, "MED",
    'public cust_detail'[income] >= 70000, "HIGH",
    "unknown"
)
```
This helps in understanding customer behavior and targeting high, medium, and low-income segments for marketing strategies.

### **Week Number for Transactions**
To calculate the week number of each transaction:

```DAX
week_num2 = WEEKNUM('public cc_detail'[week_start_date])
```

### **Revenue Calculation**
The revenue from each transaction is calculated by adding annual fees, transaction amounts, and interest earned:

```DAX
Revenue = 'public cc_detail'[annual_fees] + 'public cc_detail'[total_trans_amt] + 'public cc_detail'[interest_earned]
```

### **Current Week Revenue**
To calculate revenue for the current week:

```DAX
Current_week_Revenue = CALCULATE(
    SUM('public cc_detail'[Revenue]),
    FILTER(
        ALL('public cc_detail'),
        'public cc_detail'[week_num2] = MAX('public cc_detail'[week_num2])
    )
)
```

### **Previous Week Revenue**
To calculate revenue from the previous week:

```DAX
Previous_week_Revenue = CALCULATE(
    SUM('public cc_detail'[Revenue]),
    FILTER(
        ALL('public cc_detail'),
        'public cc_detail'[week_num2] = MAX('public cc_detail'[week_num2]) - 1
    )
)
```

These DAX calculations helped in tracking the weekly revenue trends and comparing the current week to the previous week for better forecasting and business insights.

## Dashboards

The project includes the following Power BI dashboards to visualize the results and support data-driven decisions:

1. **Overview Dashboard**:
   - A high-level summary of customer transaction metrics, including total revenue, transaction amounts, and interest earned.
   - Visualizes overall company performance and key KPIs, such as the percentage of revenue generated by different customer segments and card types.

2. **Customer Segmentation Dashboard**:
   - Breaks down customer demographics by age, income group, and gender to understand how different segments contribute to revenue.
   - Highlights high-value customer groups and their spending behaviors.

3. **Spending Trends Dashboard**:
   - Displays trends in revenue generation across time (weekly, monthly) and different product categories.
   - Provides insights into peak transaction periods and helps identify seasonal patterns in spending.

4. **High-Value Customer Analysis Dashboard**:
   - Identifies and visualizes top-performing customers by transaction volume and revenue contribution.
   - Focuses on the highest-value customer segments, allowing for targeted marketing and personalized offers.

5. **Geographic Performance Dashboard**:
   - Visualizes revenue generation by state or region, identifying areas contributing the most to the overall revenue (e.g., TX, NY, CA).
   - Helps optimize regional marketing strategies and understand geographic patterns in customer behavior.


## Key Insights & Results
- **Overall revenue** is **57M**.
- **Total interest** earned by the company is **8M**.
- **Total transaction amount** stands at **46M**.
- **Male customers** are contributing more to revenue (**31M**), compared to **female customers** (**26M**).
- **Blue & Silver credit cards** account for **93%** of overall transactions.
- **TX, NY, and CA** contribute to **68%** of the overall revenue.
- The **overall activation rate** is **57.5%**.
- The **overall delinquent rate** is **6.06%**.

## Actionable Insights & Recommendations

1. **Target High-Value Customers (Male Segment)**  
   - **Insight**: Male customers are contributing more significantly to revenue (31M) compared to female customers (26M).
   - **Recommendation**: Focus on marketing campaigns specifically tailored to male customers, offering personalized incentives or benefits to increase engagement and retention. 

2. **Enhance Engagement for Blue & Silver Credit Card Holders**  
   - **Insight**: Blue & Silver credit cards contribute to 93% of the overall transactions.
   - **Recommendation**: Strengthen the loyalty programs and reward schemes for Blue & Silver cardholders, as they are the primary revenue generators. Consider introducing exclusive benefits to further enhance their satisfaction and retention.

3. **Optimize Marketing Strategies for Top Performing States (TX, NY, CA)**  
   - **Insight**: TX, NY, and CA contribute to 68% of the overall revenue.
   - **Recommendation**: Tailor marketing efforts and promotions to the high-performing states (TX, NY, CA) to capitalize on existing market strengths. At the same time, consider localized campaigns in these states to maintain momentum and further boost sales.

4. **Improve Activation Rate**  
   - **Insight**: The overall activation rate is 57.5%, indicating that a significant number of customers have not fully engaged with their credit cards.
   - **Recommendation**: Implement targeted outreach programs to increase card activation. Consider offering incentives, such as cashback or bonus points, for customers who activate their cards within a specific time frame.

5. **Reduce Delinquent Rate**  
   - **Insight**: The overall delinquent rate is 6.06%, which indicates that a portion of customers is struggling with timely payments.
   - **Recommendation**: Introduce programs designed to support customers at risk of delinquency. This could include offering flexible payment plans, financial literacy programs, or early reminders for upcoming payments. Additionally, consider offering a grace period or lower interest rates for customers who make consistent payments.

6. **Expand Reach in Underperforming Regions**  
   - **Insight**: While TX, NY, and CA are high-performing, there may be other regions where the company’s performance is lagging.
   - **Recommendation**: Conduct a deeper analysis of underperforming regions and identify barriers to customer acquisition or engagement. Implement localized marketing and promotional strategies to increase market penetration in these areas.

7. **Monitor Transaction Trends for Seasonal Adjustments**  
   - **Insight**: There are likely seasonal patterns in transaction volumes and revenue generation.
   - **Recommendation**: Leverage historical data to forecast trends and adjust marketing, promotions, and product offerings according to peak transaction periods (e.g., holidays, special events). This will help the company make proactive adjustments to optimize sales and customer engagement.
