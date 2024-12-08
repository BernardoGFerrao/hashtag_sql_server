SELECT * FROM DimProduct
SELECT * FROM DimChannel


SELECT 
	BrandName,
	ChannelName
FROM	
	DimProduct CROSS JOIN DimChannel
WHERE BrandName IN ('Contoso', 'Fabrikam', 'Litware')