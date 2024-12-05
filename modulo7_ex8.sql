SELECT 
	Education AS 'N�vel escolar',
	COUNT(Education) AS 'Qtde de pessoas',
	AVG(YearlyIncome) AS 'M�dia salarial'
FROM 
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education
ORDER BY COUNT(Education) DESC