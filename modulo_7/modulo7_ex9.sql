SELECT 
	DepartmentName AS 'Departamento',
	COUNT(DepartmentName) AS 'qtde de funcionarios'
FROM 
	DimEmployee
WHERE EndDate IS NULL
GROUP BY DepartmentName