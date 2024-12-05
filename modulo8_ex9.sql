SELECT TOP(100)* FROM FactOnlineSales
SELECT TOP(100)* FROM DimPromotion

SELECT 
	TOP(100)
	OnlineSalesKey, 
	DateKey,
	PromotionName,
	SalesAmount
FROM FactOnlineSales
LEFT JOIN DimPromotion
	ON FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE PromotionName <> 'No Discount'
ORDER BY DateKey ASC