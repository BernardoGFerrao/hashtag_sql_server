SELECT * FROM DimCustomer

SELECT 
	AVG(YearlyIncome) AS 'M�dia Salarial'
FROM 
	DimCustomer
WHERE Occupation = 'Professional'