# Write your MySQL query statement below
Select e.name,b.bonus
from Employee e 
Left join  Bonus b
on e.empId = b.empId
Where IFNULL(b.bonus,0)<1000;