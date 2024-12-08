SELECT 
	Title AS 'Cargo',
	SUM(VacationHours) AS 'Horas totais'
FROM 
	DimEmployee
WHERE Gender = 'F' AND DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') AND HireDate BETWEEN '1999-01-01' AND '2000-12-31'
GROUP BY Title


