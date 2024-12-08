SELECT 
	BrandName AS 'MARCA',
	COUNT(DISTINCT ColorName) AS 'CORES'
FROM 
	DimProduct
GROUP BY BrandName