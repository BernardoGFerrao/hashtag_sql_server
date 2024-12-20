
--A
SELECT 
	ProductKey AS 'CHAVE DO PRODUTO',
	SUM(SalesAmount) AS 'QUANTIDADE DE VENDAS'
FROM 
	FactSales
GROUP BY ProductKey
HAVING SUM(SalesAmount) >= 5000000
ORDER BY SUM(SalesAmount) DESC

--B
SELECT 
	TOP(10)
	ProductKey AS 'CHAVE DO PRODUTO',
	SUM(SalesAmount) AS 'QUANTIDADE DE VENDAS'
FROM 
	FactSales
GROUP BY ProductKey
ORDER BY SUM(SalesAmount) DESC
