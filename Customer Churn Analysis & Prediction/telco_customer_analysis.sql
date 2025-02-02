-- This SQL query creates a table called 'customer_data' to store various customer attributes related to their service usage, billing, and status. 
-- It then imports customer data from a CSV file into the table using the COPY command. 
-- Finally, it runs a query to count the total number of records in the 'customer_data' table to verify successful data import.

CREATE TABLE customer_data (
    Customer_ID VARCHAR(50) PRIMARY KEY,
    Gender VARCHAR(10),
    Age INT,
    Married VARCHAR(5),
    State VARCHAR(50),
    Number_of_Referrals INT,
    Tenure_in_Months INT,
    Value_Deal VARCHAR(50),
    Phone_Service VARCHAR(10),
    Multiple_Lines VARCHAR(10),
    Internet_Service VARCHAR(50),
    Internet_Type VARCHAR(50),
    Online_Security VARCHAR(10),
    Online_Backup VARCHAR(10),
    Device_Protection_Plan VARCHAR(10),
    Premium_Support VARCHAR(10),
    Streaming_TV VARCHAR(10),
    Streaming_Movies VARCHAR(10),
    Streaming_Music VARCHAR(10),
    Unlimited_Data VARCHAR(10),
    Contract VARCHAR(50),
    Paperless_Billing VARCHAR(10),
    Payment_Method VARCHAR(50),
    Monthly_Charge DECIMAL(10, 2),
    Total_Charges DECIMAL(15, 2),
    Total_Refunds DECIMAL(15, 2),
    Total_Extra_Data_Charges DECIMAL(15, 2),
    Total_Long_Distance_Charges DECIMAL(15, 2),
    Total_Revenue DECIMAL(15, 2),
    Customer_Status VARCHAR(50),
    Churn_Category VARCHAR(50),
    Churn_Reason VARCHAR(100)
);

COPY customer_data(
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    Value_Deal,
    Phone_Service,
    Multiple_Lines,
    Internet_Service,
    Internet_Type,
    Online_Security,
    Online_Backup,
    Device_Protection_Plan,
    Premium_Support,
    Streaming_TV,
    Streaming_Movies,
    Streaming_Music,
    Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    Churn_Category,
    Churn_Reason
)
FROM 'C:\Program Files\PostgreSQL\17\data\Telco Customer Data\Telco_Customer_Data.csv'
DELIMITER ','               
CSV HEADER;  

Select count(*) from customer_data;

-- This SQL query performs data exploration by checking the distinct values and their distribution across different columns in the 'customer_data' table.
-- It calculates the count and percentage of different values for 'Gender', 'Contract', 'Customer_Status', and 'State'.
-- Additionally, it calculates the total revenue by 'Customer_Status' and orders the results by state percentage in descending order.

SELECT Gender, Count(Gender) as TotalCount,
       Count(Gender) * 1.0 / (SELECT Count(*) FROM customer_data)  AS Percentage
FROM customer_data
GROUP BY Gender;

SELECT Contract, Count(Contract) as TotalCount,
       Count(Contract) * 1.0 / (SELECT Count(*) FROM customer_data)  AS Percentage
FROM customer_data
GROUP BY Contract;

SELECT Customer_Status, Count(Customer_Status) as TotalCount, 
       Sum(Total_Revenue) as TotalRev,
       Sum(Total_Revenue) / (SELECT sum(Total_Revenue) FROM customer_data) * 100 AS RevPercentage
FROM customer_data
GROUP BY Customer_Status;

SELECT State, Count(State) as TotalCount,
       Count(State) * 1.0 / (SELECT Count(*) FROM customer_data)  AS Percentage
FROM customer_data
GROUP BY State
ORDER BY Percentage DESC;

-- This SQL script performs data exploration to check for null values in each column of the 'customer_data' table. 
-- It calculates the count of null values for each field, helping to identify missing or incomplete data across different customer attributes.

SELECT 
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Customer_ID_Null_Count,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_Null_Count,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Null_Count,
    SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) AS Married_Null_Count,
    SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS State_Null_Count,
    SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,
    SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,
    SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,
    SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,
    SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,
    SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,
    SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,
    SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS Online_Security_Null_Count,
    SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,
    SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,
    SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,
    SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,
    SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,
    SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,
    SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,
    SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS Contract_Null_Count,
    SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,
    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,
    SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,
    SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,
    SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,
    SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,
    SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,
    SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,
    SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,
    SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,
    SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count
FROM customer_data;

-- This SQL query creates a new table called 'prod_Churn' to store customer data with default values for certain fields. 
-- It then inserts data into the 'prod_Churn' table by selecting records from the 'customer_data' table, 
-- using the COALESCE function to handle NULL values and replace them with predefined defaults such as 'None' or 'No'.

CREATE TABLE prod_Churn (
    Customer_ID VARCHAR(50) PRIMARY KEY,
    Gender VARCHAR(10),
    Age INT,
    Married VARCHAR(5),
    State VARCHAR(50),
    Number_of_Referrals INT,
    Tenure_in_Months INT,
    Value_Deal VARCHAR(50) DEFAULT 'None',
    Phone_Service VARCHAR(10),
    Multiple_Lines VARCHAR(10) DEFAULT 'No',
    Internet_Service VARCHAR(50),
    Internet_Type VARCHAR(50) DEFAULT 'None',
    Online_Security VARCHAR(10) DEFAULT 'No',
    Online_Backup VARCHAR(10) DEFAULT 'No',
    Device_Protection_Plan VARCHAR(10) DEFAULT 'No',
    Premium_Support VARCHAR(10) DEFAULT 'No',
    Streaming_TV VARCHAR(10) DEFAULT 'No',
    Streaming_Movies VARCHAR(10) DEFAULT 'No',
    Streaming_Music VARCHAR(10) DEFAULT 'No',
    Unlimited_Data VARCHAR(10) DEFAULT 'No',
    Contract VARCHAR(50),
    Paperless_Billing VARCHAR(10),
    Payment_Method VARCHAR(50),
    Monthly_Charge DECIMAL(10, 2),
    Total_Charges DECIMAL(15, 2),
    Total_Refunds DECIMAL(15, 2),
    Total_Extra_Data_Charges DECIMAL(15, 2),
    Total_Long_Distance_Charges DECIMAL(15, 2),
    Total_Revenue DECIMAL(15, 2),
    Customer_Status VARCHAR(50),
    Churn_Category VARCHAR(50) DEFAULT 'Others',
    Churn_Reason VARCHAR(100) DEFAULT 'Others'
);

INSERT INTO prod_Churn (
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    Value_Deal,
    Phone_Service,
    Multiple_Lines,
    Internet_Service,
    Internet_Type,
    Online_Security,
    Online_Backup,
    Device_Protection_Plan,
    Premium_Support,
    Streaming_TV,
    Streaming_Movies,
    Streaming_Music,
    Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    Churn_Category,
    Churn_Reason
)
SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    COALESCE(Value_Deal, 'None') AS Value_Deal,
    Phone_Service,
    COALESCE(Multiple_Lines, 'No') AS Multiple_Lines,
    Internet_Service,
    COALESCE(Internet_Type, 'None') AS Internet_Type,
    COALESCE(Online_Security, 'No') AS Online_Security,
    COALESCE(Online_Backup, 'No') AS Online_Backup,
    COALESCE(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    COALESCE(Premium_Support, 'No') AS Premium_Support,
    COALESCE(Streaming_TV, 'No') AS Streaming_TV,
    COALESCE(Streaming_Movies, 'No') AS Streaming_Movies,
    COALESCE(Streaming_Music, 'No') AS Streaming_Music,
    COALESCE(Unlimited_Data, 'No') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    COALESCE(Churn_Category, 'Others') AS Churn_Category,
    COALESCE(Churn_Reason, 'Others') AS Churn_Reason
FROM customer_data;

--1. Create View for vw_ChurnData (Customers who have either "Churned" or "Stayed")
CREATE VIEW vw_ChurnData AS
SELECT *
FROM prod_Churn
WHERE Customer_Status IN ('Churned', 'Stayed');

--2.Create View for vw_JoinData (Customers who have "Joined")
CREATE VIEW vw_JoinData AS
SELECT *
FROM prod_Churn
WHERE Customer_Status = 'Joined';
