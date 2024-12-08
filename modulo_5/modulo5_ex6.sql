SELECT
	TOP(100) *
FROM
	DimStore
--WHERE Status = 'Off'
WHERE CloseDate IS NOT NULL