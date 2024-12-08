SELECT 
	StockTypeName AS 'TIPO', 
	SUM(Weight) AS 'PESO'
FROM 
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(Weight) DESC