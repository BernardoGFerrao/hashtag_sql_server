SELECT TOP(100) * FROM FactStrategyPlan

SELECT TOP(100) * FROM DimScenario


SELECT 
	TOP(100) StrategyPlanKey,
			 DateKey,
			 ScenarioName,
			 Amount
FROM FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey