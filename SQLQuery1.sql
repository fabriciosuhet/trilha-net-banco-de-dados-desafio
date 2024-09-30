SELECT Nome, Ano FROM Filmes

SELECT * FROM Filmes
ORDER BY Ano ASC

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro' 

SELECT * FROM Filmes
WHERE Ano = 1997


SELECT * FROM Filmes
WHERE Ano > 2000

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

SELECT Ano, COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY COUNT(Ano) DESC

SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores 
Where Genero ='M';

SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores 
Where Genero ='F'
ORDER BY PrimeiroNome;

SELECT Filmes.Nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

SELECT Filmes.Nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 
WHERE Generos.Genero = 'Mistério'

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
FROM Filmes INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor