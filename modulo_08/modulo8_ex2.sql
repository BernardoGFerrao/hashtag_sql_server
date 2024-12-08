SELECT * FROM DimProductSubcategory

SELECT * FROM DimProductCategory

SELECT 
	ProductSubcategoryKey AS 'ID DO SUBCATEGORIA',
	ProductSubcategoryName AS 'SUBCATEGORIA',
	ProductCategoryName AS 'Categoria'
FROM 
	DimProductSubcategory
LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey