SELECT E2.employee_id , E2.name, COUNT(E1.reports_to) AS reports_count, ROUND(AVG(E1.age), 0) AS average_age
FROM Employees E1 JOIN Employees E2 ON E1.reports_to = E2.employee_id
WHERE E1.reports_to IS NOT NULL
GROUP BY E2.employee_id , E2.name
ORDER BY E2.employee_id