# Write your MySQL query statement below
SELECT Employees.name, EmployeeUNI.unique_id
FROM Employees
LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id

-- 틀린 답
-- SELECT EmployeeUNI.unique_id, Employees.name
-- FROM Employees
-- LEFT JOIN EmployeesUNI ON Employees.id = EmployeeUNI.id
