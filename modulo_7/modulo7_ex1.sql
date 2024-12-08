SELECT 
	TOP(100) *
FROM 
	FactSales

-- A)
SELECT
	channelKey AS 'CANAL DE VENDA',
	SUM(SalesQuantity) AS 'TOTAL VENDIDO'
From 
	FactSales
GROUP BY channelKey

-- B)
SELECT 
	StoreKey AS 'CANAL DE LOJA',
	SUM(SalesQuantity) AS 'TOTAL VENDIDO',
	SUM(ReturnQuantity) AS 'TOTAL RETORNADO'
FROM
	FactSales
GROUP BY StoreKey
ORDER BY [CANAL DE LOJA] ASC

-- C)
SELECT 
	channelKey AS 'CANAL DE VENDA',
	SUM(SalesAmount) AS 'TOTAL VENDIDO'
FROM 
	FactSales
WHERE DateKey BETWEEN '20070101' AND '20071231'
GROUP BY channelKey
