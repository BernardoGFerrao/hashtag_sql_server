

-- A
SELECT 
	MAX(EmployeeCount) AS 'Maior Qtde. Funcionários'
FROM DimStore

-- B 
SELECT 
	TOP(1)StoreName 
FROM 
	DimStore
ORDER BY EmployeeCount DESC

-- C
SELECT 
	MIN(EmployeeCount) AS 'Menor Qtde. Funcionários'
FROM DimStore

-- D
SELECT 
	TOP(1)StoreName 
FROM 
	DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount ASC