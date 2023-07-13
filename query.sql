-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Movies

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Movies 
ORDER BY Ano

-- 3 - Buscar pelo Movie de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Movies 
WHERE Nome='De Volta para o Futuro'

-- 4 - Buscar os Movies lançados em 1999
SELECT Nome, Ano, Duracao FROM Movies 
WHERE Ano=1997

-- 5 - Buscar os Movies lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Movies 
WHERE Ano>2000

-- 6 - Buscar os Movies com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Movies 
WHERE Duracao>100 AND Duracao<150 
ORDER BY Duracao

-- 7 - Buscar a quantidade de Movies lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade FROM Movies 
GROUP BY Ano 
ORDER BY Quantidade DESC

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero='M'
SELECT PrimeiroNome, UltimoNome FROM Atores 
WHERE Genero='M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores 
WHERE Genero='F' 
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do Movie e o gênero
SELECT Nome, Genero FROM MoviesGenero 
INNER JOIN Movies ON Movies.Id = MoviesGenero.IdMovie 
INNER JOIN Generos ON Generos.Id = MoviesGenero.IdGenero

-- 11 - Buscar o nome do Movie e o gênero do tipo "Mistério"
SELECT Nome, Genero FROM MoviesGenero 
INNER JOIN Movies ON Movies.Id = MoviesGenero.IdMovie 
INNER JOIN Generos ON Generos.Id = MoviesGenero.IdGenero 
WHERE Genero='Mistério' 

-- 12 - Buscar o nome do Movie e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM ElencoMovie 
INNER JOIN Atores ON ElencoMovie.IdAtor = Atores.Id
INNER JOIN Movies ON ElencoMovie.IdMovie = Movies.Id