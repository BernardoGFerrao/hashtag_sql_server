SELECT * FROM DimProduct
SELECT * FROM DimProductCategory


SELECT 
	ProductName AS 'NOME DO PRODUTO',
	Manufacturer AS 'F�BRICA',
	BrandName AS 'MARCA',
	ProductCategoryName AS 'CATEGORIA',
	ProductCategoryDescription AS 'DESCRI��O DA CATEGORIA'
FROM	
	DimProduct
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductCategoryKey
	LEFT JOIN DimProductCategory
		ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey