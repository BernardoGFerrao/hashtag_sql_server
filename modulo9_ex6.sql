SELECT * FROM FactExchangeRate
SELECT * FROM DimCurrency

SELECT 
	CurrencyDescription, 
	AVG(AverageRate) AS 'TAXA DE CAMBIO M�DIA'
FROM 
	FactExchangeRate
INNER JOIN DimCurrency
	ON FactExchangeRate.CurrencyKey = DimCurrency.CurrencyKey
GROUP BY CurrencyDescription
HAVING AVG(AverageRate) BETWEEN 10 AND 100
---------------------------------------------------
--------------------