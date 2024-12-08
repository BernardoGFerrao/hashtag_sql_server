SELECT 
	TOP(10) * 
FROM
	DimProduct 
ORDER by UnitPrice DESC, Weight DESC, AvailableForSaleDate ASC