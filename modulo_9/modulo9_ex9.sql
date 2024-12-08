SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory



SELECT 
	ProductSubcategoryName,
	COUNT(ProductKey) AS 'Qtde produtos'
FROM DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY ProductSubcategoryName
---------------------------------------------------
--------------------