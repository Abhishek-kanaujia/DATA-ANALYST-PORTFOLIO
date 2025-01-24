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
   - **Create New Columns**: Introduce new calculated fields, such as Total Amount for each transaction (unit price * quantity), to enrich the dataset.
   - **Enhance Dataset**: These new features support more advanced SQL queries and aggregation tasks in later stages of analysis.

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

