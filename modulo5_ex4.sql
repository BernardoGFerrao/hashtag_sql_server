SELECT
	StoreName AS 'Nome da Lojas',
	OpenDate AS 'Data de abertura',
	EmployeeCount AS 'Quantidade de funcion�rios'
	--*
FROM 
	DimStore
WHERE Status = 'On' AND StoreType = 'Store'