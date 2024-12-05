SELECT TOP(100) * FROM FactSales
SELECT * FROM DimProduct

-- A
SELECT 
	SUM(SalesQuantity) AS 'Qtde de vendas',
	ColorName
FROM 
	FactSales
LEFT JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
---------------------------------------------------
-- B
SELECT 
	SUM(SalesQuantity) AS 'Qtde de vendas',
	ColorName
FROM 
	FactSales
LEFT JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
HAVING SUM(SalesQuantity) > 3000000

---------------------------------------------------
--------------------