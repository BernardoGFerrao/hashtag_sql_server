SELECT	
	COUNT(DISTINCT BrandName) AS 'Qtde distintas de marcas',
	COUNT(DISTINCT ClassName) AS 'Qtde distintas de classes',
	COUNT(DISTINCT ColorName) AS 'Qtde distintas de cores'
FROM DimProduct

