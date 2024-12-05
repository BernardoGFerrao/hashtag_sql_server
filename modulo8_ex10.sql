SELECT TOP(100)* FROM FactSales
SELECT TOP(100)* FROM DimChannel
SELECT TOP(100)* FROM DimStore
SELECT TOP(100)* FROM DimProduct

SELECT 
	TOP(100)
	SalesKey,
	ChannelName,
	StoreName,
	ProductName,
	SalesAmount
From FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
ORDER BY SalesAmount DESC