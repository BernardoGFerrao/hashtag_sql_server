--SELECT * FROM DimProduct
--SELECT * FROM DimProductSubcategory

DECLARE @lista_produtos_lamps VARCHAR(500) = '',
		@nome_subcategoria VARCHAR(50) = 'lamps',
		@key INT

SET @key = (SELECT ProductSubcategoryKey FROM DimProductSubcategory WHERE ProductSubcategoryName = @nome_subcategoria)

SELECT 
	*
FROM 
	DimProduct
WHERE ProductSubcategoryKey = @key

	
