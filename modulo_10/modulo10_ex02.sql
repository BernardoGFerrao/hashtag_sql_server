
DECLARE @produto VARCHAR(50) = 'Celular',
		@quantidade INT = 12,
		@preco FLOAT = 9.99

DECLARE
		@faturamento FLOAT = @quantidade * @preco

SELECT
	@produto AS 'Nome',
	@quantidade AS 'qtde',
	'R$ ' + CAST(@preco AS VARCHAR(50)) AS 'preco',
	'R$ ' + CAST(@faturamento AS VARCHAR(50)) AS 'Faturamento'
