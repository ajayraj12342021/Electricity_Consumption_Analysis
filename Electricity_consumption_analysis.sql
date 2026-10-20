CREATE DATABASE electricity_analysis;
USE electricity_analysis;
CREATE TABLE electricity_data (
    Household_ID VARCHAR(10),
    Month VARCHAR(15),
    Year INT,
    Units_Consumed_kWh INT,
    Rate_Per_Unit_Rs DECIMAL(10,2),
    Bill_Amount_Rs DECIMAL(10,2));
    
    USE electricity_analysis;

SELECT COUNT(*) AS total_records
FROM electricity_data;

SELECT *
FROM electricity_data
LIMIT 10;


SELECT SUM(Units_Consumed_kWh) AS total_units
FROM electricity_data;


SELECT
    Month,
    SUM(Units_Consumed_kWh) AS total_units
FROM electricity_data
GROUP BY Month
ORDER BY FIELD(
    Month,
    'January', 'February', 'March',
    'April', 'May', 'June'
);


SELECT
    Household_ID,
    SUM(Units_Consumed_kWh) AS total_units
FROM electricity_data
GROUP BY Household_ID
ORDER BY total_units DESC
LIMIT 1;


SELECT AVG(Units_Consumed_kWh) AS average_units
FROM electricity_data;


SELECT SUM(Bill_Amount_Rs) AS total_bill
FROM electricity_data;


SELECT
    Household_ID,
    SUM(Units_Consumed_kWh) AS total_units,
    SUM(Bill_Amount_Rs) AS total_bill
FROM electricity_data
GROUP BY Household_ID
ORDER BY total_units DESC;





