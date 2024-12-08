SELECT * FROM DimStore

DECLARE @nome_das_lojas VARCHAR(50) = ''

SELECT 
	@nome_das_lojas = @nome_das_lojas + StoreName +',' + CHAR(10) 
FROM DimStore 
WHERE Status = 'Off' AND FORMAT(CloseDate, 'yyyy') = '2008'

PRINT LEFT('As lojas fechadas no ano de 2008 foram:' + CHAR(10) + @nome_das_lojas, DATALENGTH('As lojas fechadas no ano de 2008 foram:' + CHAR(10) + @nome_das_lojas) - 1)
