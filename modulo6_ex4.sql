SELECT 
	*
FROM DimEmployee


-- MASC
SELECT 
	COUNT(FirstName) 
FROM
	DimEmployee
WHERE GENDER = 'M'

SELECT 
	TOP(1)
	FirstName,
	EmailAddress,
	StartDate
FROM
	DimEmployee
WHERE GENDER = 'M'
ORDER BY StartDate ASC

-- FEM
SELECT 
	COUNT(FirstName) 
FROM
	DimEmployee
WHERE GENDER = 'F'

SELECT 
	TOP(1)
	FirstName,
	EmailAddress,
	StartDate
FROM
	DimEmployee
WHERE GENDER = 'F'
ORDER BY StartDate ASC