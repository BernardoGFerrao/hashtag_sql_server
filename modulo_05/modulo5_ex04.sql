SELECT
	StoreName AS 'Nome da Lojas',
	OpenDate AS 'Data de abertura',
	EmployeeCount AS 'Quantidade de funcionários'
	--*
FROM 
	DimStore
WHERE Status = 'On' AND StoreType = 'Store'