SELECT * FROM DimStore
SELECT * FROM DimGeography

SELECT 
	StoreKey AS 'ID da loja',
	StoreName AS 'Nome da loja', 
	EmployeeCount AS 'Qtde de funcionários',
	ContinentName AS 'Nome do continente', 
	RegionCountryName AS 'País'
FROM
	DimStore
LEFT JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey