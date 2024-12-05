SELECT 
	TOP(100) *
FROM 
	DimStore
WHERE 
	EmployeeCount BETWEEN 1 AND 20
--WHERE 
	--EmployeeCount BETWEEN 21 AND 50
--WHERE 
	--EmployeeCount >=51