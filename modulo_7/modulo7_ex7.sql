SELECT 
	Gender AS 'SEXO',
	COUNT(Gender) AS 'Qtde de pessoas',
	AVG(YearlyIncome) AS 'Média salarial anual'
FROM
	DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender