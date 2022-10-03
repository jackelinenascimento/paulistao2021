CREATE PROCEDURE criarGrupos
AS
	DECLARE @qtdTimes INT,
			@cont INT,
			@cod_grupo INT
	SET @cont = (select COUNT(*) from Grupos) + 1

	IF @cont = 1
	BEGIN
		INSERT INTO grupos VALUES 
		(2,'A'),
		(9,'B'),
		(13,'C'),
		(16,'D')
	END
	SET @qtdTimes = (SELECT COUNT(nome) FROM times)

	WHILE (@cont <= @qtdTimes)
	BEGIN 

		SET @cod_grupo = CAST(RAND()*(5 - 1) + 1 AS INT)

		IF (@cont != 2 AND @cont != 9 AND @cont != 13 AND @cont != 16)
		BEGIN

			IF @cod_grupo = 1 
			BEGIN

				IF (SELECT COUNT(*) FROM grupos WHERE letra = 'A') < 4
				BEGIN
					INSERT INTO grupos VALUES (@cont, 'A')
					SET @cont = @cont + 1
					CONTINUE
				END
			END

			IF @cod_grupo = 2 
			BEGIN
				IF (SELECT COUNT(*) FROM grupos WHERE letra = 'B') < 4
				BEGIN
					INSERT INTO grupos VALUES (@cont, 'B')
					SET @cont = @cont + 1
					CONTINUE
				END
			END
			IF @cod_grupo = 3 
				IF (SELECT COUNT(*) FROM grupos WHERE letra = 'C') < 4
				BEGIN
					INSERT INTO grupos VALUES (@cont, 'C')
					SET @cont = @cont + 1
					CONTINUE
				END
			IF @cod_grupo = 4 
			BEGIN
				IF (SELECT COUNT(*) FROM grupos WHERE letra = 'D') < 4
				BEGIN
					INSERT INTO grupos VALUES (@cont, 'D')
					SET @cont = @cont + 1
					CONTINUE
				END
			END
		END
		ELSE
		BEGIN
			SET @cont = @cont + 1
		END 
	END
	
EXEC criarGrupos
	
CREATE VIEW viewGrupos AS
	SELECT g.letra AS grupo, t.nome AS nomeTime
	FROM grupos g
	LEFT JOIN times t
	ON g.codigoTime = t.codigoTime


