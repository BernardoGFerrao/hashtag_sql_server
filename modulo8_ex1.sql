SELECT 
	*
FROM 
	DimProduct

SELECT 
	*
FROM 
	DimProductSubcategory

SELECT
	ProductKey AS 'ID', 
	ProductName AS 'PRODUTO',
	ProductSubcategoryName AS 'SUBCATEGORIA DO PRODUTO'
FROM 
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey