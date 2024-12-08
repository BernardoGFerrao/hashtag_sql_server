SELECT TOP(100) * FROM FactStrategyPlan
SELECT TOP(100) * FROM DimDate


SELECT 
	SUM(Amount) AS 'SOMA TOTAL PLANEJAMENTO', 
	CalendarYear
FROM FactStrategyPlan
INNER JOIN DimDate
	ON FactStrategyPlan.Datekey = DimDate.Datekey
GROUP BY CalendarYear
---------------------------------------------------
--------------------