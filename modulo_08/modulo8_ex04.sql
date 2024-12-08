SELECT * FROM DimProduct
SELECT * FROM DimProductCategory


SELECT 
	ProductName AS 'NOME DO PRODUTO',
	Manufacturer AS 'FÁBRICA',
	BrandName AS 'MARCA',
	ProductCategoryName AS 'CATEGORIA',
	ProductCategoryDescription AS 'DESCRIÇÃO DA CATEGORIA'
FROM	
	DimProduct
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductCategoryKey
	LEFT JOIN DimProductCategory
		ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey