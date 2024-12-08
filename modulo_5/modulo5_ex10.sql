SELECT
	ProductKey AS 'ID',
	ProductName AS 'Nome do Produto',
	UnitPrice AS 'Pre�o do Produto'
FROM 
	DimProduct
WHERE (UnitPrice BETWEEN 10 AND 30) AND (BrandName = 'Contoso') AND (ColorName = 'Silver') 
ORDER BY UnitPrice DESC
