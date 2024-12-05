SELECT TOP(100) * FROM FactSales
SELECT * FROM DimChannel

-- A
SELECT 
	TOP(100)
	SUM(SalesQuantity) AS 'Qtde de vendas',
	ChannelName
FROM 
	FactSales
LEFT JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY ChannelName
---------------------------------------------------
-- B
SELECT 
	TOP(100)
	SUM(SalesQuantity) AS 'Qtde de vendas',
	SUM(ReturnQuantity) AS 'Qtde devolvida',
	StoreName
FROM 
	FactSales
LEFT JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY StoreName
---------------------------------------------------
-- C
SELECT
	TOP(100)
	SUM(SalesQuantity) AS 'Qtde de vendas',
	CalendarMonthLabel AS 'Mes'
FROM 
	FactSales
LEFT JOIN DimDate
	ON FactSales.DateKey = DimDate.Datekey
GROUP BY CalendarMonthLabel
--------------------
SELECT
	TOP(100)
	SUM(SalesQuantity) AS 'Qtde de vendas',
	CalendarYear AS 'Ano'
FROM 
	FactSales
LEFT JOIN DimDate
	ON FactSales.DateKey = DimDate.Datekey
GROUP BY CalendarYear
