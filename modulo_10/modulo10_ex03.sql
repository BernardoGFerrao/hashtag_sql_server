DECLARE @nome VARCHAR(50) = 'André',
		@data_nascimento DATETIME = '10/02/1998',
		@num_pets INT = 2


PRINT 'Meu nome é ' + @nome +', nasci em ' + FORMAT(CAST(@data_nascimento AS DATETIME), 'dd/MM/yyyy') + ' e tenho ' + CAST(@num_pets AS VARCHAR(50)) +' pets.'  