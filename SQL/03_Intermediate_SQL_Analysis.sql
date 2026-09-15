--Section 1: Department Performance


--Q17. Average Salary by Department (Highest to Lowest)
SELECT
    department,
    COUNT(*) AS total_employees,
    ROUND(AVG(monthlyincome),2) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;