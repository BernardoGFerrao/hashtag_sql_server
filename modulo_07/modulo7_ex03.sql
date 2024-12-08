


--A
SELECT 
	TOP(1)
	CustomerKey,
	SUM(SalesQuantity) AS 'Quantidade de vendas'
FROM 
	FactOnlineSales
GROUP BY CustomerKey 
ORDER BY SUM(SalesQuantity) DESC
--B
SELECT 
	TOP(3)
	ProductKey,
	SUM(SalesQuantity) AS 'Quantidade de vendas'
FROM 
	FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY ProductKey 
ORDER BY SUM(SalesQuantity) DESC