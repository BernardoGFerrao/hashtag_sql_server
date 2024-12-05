SELECT TOP(100) * FROM FactStrategyPlan
SELECT TOP(100) * FROM DimScenario



SELECT 
	SUM(Amount) AS 'SOMA TOTAL',
	ScenarioName
FROM FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
WHERE ScenarioName <> 'Forecast'
GROUP BY ScenarioName
---------------------------------------------------
--------------------