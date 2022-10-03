USE Paulistao

CREATE PROCEDURE criarGrupos
AS
	DECLARE @qtdadeTotal 	INT,
			@contador		INT,
			@nroTime		INT
			
	BEGIN
			INSERT INTO grupos VALUES
				(2, 'A'),
				(9, 'B'),
				(13, 'C'),
				(16, 'D')
	END 
	
	SET @qtdadeTotal = (SELECT COUNT(nome) FROM times)
	SET @contador = (SELECT COUNT(codTime) FROM grupos)
	
	WHILE(@contador <= @qtdadeTotal)
	BEGIN
		
		SET @nroTime = (SELECT ROUND (DBMS_RANDOM.VALUE(1, @qtdadeTotal)) FROM DUAL)
		
		IF (@nroTime != 2 AND @nroTime != 9 AND @nroTime != 13 AND @nroTime != 16)
		BEGIN
			IF (SELECT COUNT(*) FROM grupos WHERE letra = 'A') < 4
			BEGIN
					INSERT INTO grupos VALUES (@nroTime, 'A')
					SET @contador = @contador + 1
					CONTINUE
			END
			IF (SELECT COUNT(*) FROM grupos WHERE letra = 'B') < 4
			BEGIN
					INSERT INTO grupos VALUES (@nroTime, 'B')
					SET @contador = @contador + 1
					CONTINUE
			END
			IF (SELECT COUNT(*) FROM grupos WHERE letra = 'C') < 4
			BEGIN
					INSERT INTO grupos VALUES (@nroTime, 'C')
					SET @contador = @contador + 1
					CONTINUE
			END
			IF (SELECT COUNT(*) FROM grupos WHERE letra = 'D') < 4
			BEGIN
					INSERT INTO grupos VALUES (@nroTime, 'D')
					SET @contador = @contador + 1
					CONTINUE
			END
		END 
	END 
	
EXEC criarGrupos
	
CREATE VIEW vwGrupos AS
	SELECT g.letra AS grupo, t.nome AS participantes, t.cidade, t.estadio, g.codigoTime AS codigo_time
	FROM grupos g
	LEFT JOIN times t
	ON g.codigoTime = t.codigoTime

SELECT * FROM vwGrupos ORDER BY grupo


