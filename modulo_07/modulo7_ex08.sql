SELECT 
	Education AS 'Nível escolar',
	COUNT(Education) AS 'Qtde de pessoas',
	AVG(YearlyIncome) AS 'Média salarial'
FROM 
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education
ORDER BY COUNT(Education) DESC