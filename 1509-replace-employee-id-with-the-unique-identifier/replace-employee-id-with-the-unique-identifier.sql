# Write your MySQL query statement below
#Approach 1: Basic Left Join
 SELECT EmployeeUNI.unique_id ,Employees.name FROM 
 Employees LEFT JOIN EmployeeUNI 
 ON Employees.id=EmployeeUNI.id;

