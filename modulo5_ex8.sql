SELECT 
	TOP(100) ProductKey AS 'ID',
			 ProductName AS 'Nome do Produto',
			 UnitPrice AS 'Preço do Produto'
				 
FROM 
	DimProduct
WHERE ProductDescription LIKE '%LCD%'