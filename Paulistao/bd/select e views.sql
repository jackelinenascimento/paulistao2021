--VIEW COM DADOS DOS TIMES NOS GRUPOS
CREATE VIEW viewGrupos AS
	SELECT g.letra AS grupo, t.nome AS nomeTime
	FROM grupos g
	LEFT JOIN times t
	ON g.codigoTime = t.codigoTime

--VIEW COM DADOS DOS JOGOS
CREATE VIEW vwJogos
AS
	SELECT j.codigoJogo, j.codigoTimeA, j.codigoTimeB, j.golsTimeA, j.golsTimeB, j.dia,
	t1.nomeTime AS timeA, t2. nomeTime AS timeB
	FROM jogos j
	LEFT JOIN times t1 ON
	j.codigoTimeA = t1.codigoTime
	LEFT JOIN times t2 ON
	j.codigoTimeB = t2.codigoTime

SELECT * FROM vwJogos ORDER BY dia

--VIEW DA CLASSIFICA��O GERAL
CREATE VIEW vwClassificacaoGeral
AS
	SELECT * FROM dbo.fn_classificacao('A')
	UNION ALL
	SELECT * FROM dbo.fn_classificacao('B')
	UNION ALL
	SELECT * FROM dbo.fn_classificacao('C')
	UNION ALL
	SELECT * FROM dbo.fn_classificacao('D')

