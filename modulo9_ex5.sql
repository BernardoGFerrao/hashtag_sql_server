SELECT top(100) * FROM FactOnlineSales
SELECT * FROM DimCustomer

SELECT 
	SUM(SalesQuantity) AS 'Qtde de vendas',
	Gender
FROM 
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE Gender IS NOT NULL
GROUP BY Gender
---------------------------------------------------
--------------------
