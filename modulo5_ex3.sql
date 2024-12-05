-- CATEGORIA A
SELECT 
	TOP(100) ProductName AS 'Nome do Produto', 
			 Weight AS 'Peso'
FROM 
	DimProduct 
WHERE Weight >= 100
ORDER BY Weight DESC

