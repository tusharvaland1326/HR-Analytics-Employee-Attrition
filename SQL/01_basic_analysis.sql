CREATE TABLE employees (
    Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(100),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(100),
    EmployeeCount INT,
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(20),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(100),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(50),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(5),
    OverTime VARCHAR(10),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);


SELECT COUNT(*)
FROM employees;


SELECT *
FROM employees
LIMIT 5;


--Step 1: Check the Total Number of Records
SELECT COUNT(*) AS total_employees
FROM employees;

--Step 2: Check for Missing Values
SELECT
COUNT(*) AS total_rows,
COUNT(age) AS age,
COUNT(attrition) AS attrition,
COUNT(department) AS department,
COUNT(jobrole) AS jobrole,
COUNT(monthlyincome) AS monthlyincome
FROM employees;

--Step 3: Explore the Dataset
--Distinct Departments
SELECT DISTINCT department
FROM employees;

--Distinct Job Roles
SELECT DISTINCT jobrole
FROM employees;

--Distinct Education Fields
SELECT DISTINCT educationfield
FROM employees;

--Distinct Marital Status
SELECT DISTINCT maritalstatus
FROM employees;

--Distinct Business Travel Types
SELECT DISTINCT businesstravel
FROM employees;

--Distinct Attrition Values
SELECT DISTINCT attrition
FROM employees;

--Distinct Gender
SELECT DISTINCT gender
FROM employees;



--Step 4: Basic Statistics

--Youngest Employee
SELECT MIN(age) AS youngest_employee
FROM employees;

--Oldest Employee
SELECT MAX(age) AS oldest_employee
FROM employees;

--Average Age
SELECT ROUND(AVG(age),2) AS average_age
FROM employees;

--Lowest Monthly Income
SELECT MIN(monthlyincome) AS minimum_salary
FROM employees;

--Highest Monthly Income
SELECT MAX(monthlyincome) AS maximum_salary
FROM employees;

--Average Monthly Income
SELECT ROUND(AVG(monthlyincome),2) AS average_salary
FROM employees;