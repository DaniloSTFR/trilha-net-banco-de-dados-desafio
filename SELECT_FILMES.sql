USE Filmes
--## Objetivo
--Você deverá criar diversas consultas, com o objetivo de retornar os dados a seguir. 
--Abaixo de cada pedido tem o retorno esperado. O seu retorno deve ser igual ao da imagem.

--## 1 - Buscar o nome e ano dos filmes
SELECT NOME, ANO FROM FILMES;

--## 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT NOME, ANO, DURACAO FROM FILMES ORDER BY ANO;

--## 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT NOME, ANO, DURACAO FROM FILMES WHERE NOME = 'De Volta para o Futuro';

--## 4 - Buscar os filmes lançados em 1997
SELECT NOME, ANO, DURACAO FROM FILMES WHERE ANO = 1997;

--## 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT NOME, ANO, DURACAO FROM FILMES WHERE ANO > 2000;

--## 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT NOME, ANO, DURACAO FROM FILMES WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY DURACAO;

--## 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ANO, COUNT(*) QUANTIDADE FROM FILMES GROUP BY ANO ORDER BY QUANTIDADE DESC;

--## 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, Genero FROM ATORES WHERE Genero = 'M';

--## 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero FROM ATORES WHERE Genero = 'F' ORDER BY PrimeiroNome;

--## 10 - Buscar o nome do filme e o gênero
SELECT F.Nome, GN.Genero FROM FILMES AS F
	INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
	INNER JOIN Generos AS GN ON GN.Id = FG.IdGenero;

--## 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, GN.Genero FROM FILMES AS F
	INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
	INNER JOIN Generos AS GN ON GN.Id = FG.IdGenero
	WHERE GN.Genero = 'Mistério';

--## 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, ATR.PrimeiroNome, ATR.UltimoNome, EF.Papel FROM FILMES AS F
	INNER JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
	INNER JOIN Atores AS ATR ON ATR.Id = EF.IdAtor;


