SELECT * FROM DimCustomer

SELECT 
	AVG(YearlyIncome) AS 'Média Salarial'
FROM 
	DimCustomer
WHERE Occupation = 'Professional'