SELECT * FROM DimStore
SELECT * FROM DimGeography

SELECT 
	StoreKey AS 'ID da loja',
	StoreName AS 'Nome da loja', 
	EmployeeCount AS 'Qtde de funcion�rios',
	ContinentName AS 'Nome do continente', 
	RegionCountryName AS 'Pa�s'
FROM
	DimStore
LEFT JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey