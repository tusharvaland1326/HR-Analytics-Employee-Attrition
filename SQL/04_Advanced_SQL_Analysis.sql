--Section 1: Window Functions


--Q36. Rank Employees by Salary
SELECT
    employeenumber,
    jobrole,
    monthlyincome,
    RANK() OVER (ORDER BY monthlyincome DESC) AS salary_rank
FROM employees;