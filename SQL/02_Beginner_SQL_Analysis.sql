--Section 1: Employee Overview


--Q1. Total Employees
SELECT COUNT(*) AS total_employees
FROM employees;


--Q2. Employees Who Left vs Stayed
SELECT
    attrition,
    COUNT(*) AS total_employees
FROM employees
GROUP BY attrition;


--Q3. Attrition Rate (%)
SELECT
    ROUND(
        COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0 /
        COUNT(*),
        2
    ) AS attrition_rate
FROM employees;


--Section 2: Department Analysis


--Q4. Employees by Department
SELECT
    department,
    COUNT(*) AS employees
FROM employees
GROUP BY department
ORDER BY employees DESC;


--Q5. Attrition by Department
SELECT
    department,
    COUNT(*) AS employees_left
FROM employees
WHERE attrition = 'Yes'
GROUP BY department
ORDER BY employees_left DESC;

--Q6. Attrition Rate by Department
SELECT
    department,
    ROUND(
        COUNT(CASE WHEN attrition='Yes' THEN 1 END) * 100.0 /
        COUNT(*),
        2
    ) AS attrition_rate
FROM employees
GROUP BY department
ORDER BY attrition_rate DESC;



--Section 3: Gender Analysis


--Q7. Employees by Gender
SELECT
    gender,
    COUNT(*) AS total
FROM employees
GROUP BY gender;


--Q8. Attrition by Gender
SELECT
    gender,
    attrition,
    COUNT(*) AS total
FROM employees
GROUP BY gender, attrition
ORDER BY gender;


--Section 4: Age Analysis


--Q9. Average Age by Department
SELECT
    department,
    ROUND(AVG(age),2) AS average_age
FROM employees
GROUP BY department
ORDER BY average_age DESC;



--Q10. Age Groups
SELECT
CASE
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 45 THEN '36-45'
    WHEN age BETWEEN 46 AND 55 THEN '46-55'
    ELSE '56+'
END AS age_group,
COUNT(*) AS employees
FROM employees
GROUP BY age_group
ORDER BY age_group;


--Q11. Attrition by Age Group
SELECT
CASE
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 45 THEN '36-45'
    WHEN age BETWEEN 46 AND 55 THEN '46-55'
    ELSE '56+'
END AS age_group,
COUNT(*) AS employees_left
FROM employees
WHERE attrition='Yes'
GROUP BY age_group
ORDER BY age_group;


--Section 5: Salary Analysis


--Q12. Average Salary by Department
SELECT
    department,
    ROUND(AVG(monthlyincome),2) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;



--Q13. Highest Paid Employees
SELECT
    employeenumber,
    jobrole,
    monthlyincome
FROM employees
ORDER BY monthlyincome DESC
LIMIT 10;



--Q14. Salary Categories
SELECT
CASE
    WHEN monthlyincome < 5000 THEN 'Low'
    WHEN monthlyincome BETWEEN 5000 AND 10000 THEN 'Medium'
    ELSE 'High'
END AS salary_category,
COUNT(*) AS employees
FROM employees
GROUP BY salary_category;


--Section 6: Job Role Analysis


--Q15. Employees by Job Role
SELECT
    jobrole,
    COUNT(*) AS employees
FROM employees
GROUP BY jobrole
ORDER BY employees DESC;


--Q16. Attrition by Job Role
SELECT
    jobrole,
    COUNT(*) AS attrition
FROM employees
WHERE attrition='Yes'
GROUP BY jobrole
ORDER BY attrition DESC;