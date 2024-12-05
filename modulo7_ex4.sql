-- A
SELECT 
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Qtde.Produtos'
From
	DimProduct
Group by BrandName

-- B
SELECT 
	ClassName,
	AVG(UnitPrice)
From
	DimProduct
GROUP BY ClassName

-- C
SELECT 
	ColorName AS 'COR',
	SUM(Weight) AS 'PESO TOTAL'
From
	DimProduct
GROUP BY ColorName