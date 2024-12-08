--A
SELECT
	TOP(100) *
FROM 
	FactStrategyPlan

SELECT * FROM DimAccount


-- B
SELECT
	StrategyPlanKey,
	DateKey,
	AccountName,
	Amount
FROM 
	FactStrategyPlan
INNER JOIN DimAccount
	ON FactStrategyPlan.AccountKey = DimAccount.AccountKey
	