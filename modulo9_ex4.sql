SELECT TOP(100) * FROM FactOnlineSales
SELECT TOP(100) * FROM FactSales
SELECT TOP(100) * FROM DimCustomer
SELECT TOP(100) * FROM DimProduct

-- A -- Agrupando pelo DimCustomerKey também para evitar clientes com nomes iguais
SELECT 
	DimCustomer.CustomerKey,
	SUM(SalesQuantity) 'qtde de vendas',
	FirstName,
	LastName
FROM 
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE CustomerType = 'Person'
GROUP BY FirstName, LastName, DimCustomer.CustomerKey
ORDER BY SUM(SalesQuantity) DESC

---------------------------------------------------
-- B
SELECT 
	TOP(10)
	DimProduct.ProductKey,
	ProductName AS 'NOME DO PRODUTO',
	SUM(SalesQuantity) 'qtde de vendas'
FROM 
	FactOnlineSales
INNER JOIN DimProduct
	ON FactOnlineSales.ProductKey = DimProduct.ProductKey
WHERE CustomerKey = 7665
GROUP BY DimProduct.ProductKey, ProductName
ORDER BY SUM(SalesQuantity) DESC
---------------------------------------------------
--------------------