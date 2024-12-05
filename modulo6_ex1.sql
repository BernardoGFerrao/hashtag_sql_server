SELECT 
	TOP(100) *
FROM FactSales

SELECT 
	SUM(SalesQuantity) AS 'Qtde Vendida',
	SUM(ReturnQuantity) AS 'Qtde Retornada'
FROM 
	FactSales
WHERE channelKey = 1

SELECT * FROM DimChannel