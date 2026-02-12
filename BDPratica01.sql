create database sprint1;
use sprint1;

/*
Exercício 1
*/

create table Atleta(
	idAtleta int primary key,
    nome varchar(40),
    modalidade varchar(40),
    qtdMedalha int
);

insert into Atleta(idAtleta, nome, modalidade, qtdMedalha) values
(1, 'Matheus Jacob', 'fisiculturismo', 1),
(2, 'Pedro Lima', 'fisiculturismo', 0),
(3, 'Vitor da Luz', 'futebol', 4),
(4, 'Jefferson Alexandre', 'futebol', 2),
(5, 'Vivian Banco', 'boliche', 3),
(6, 'Clara Dados', 'boliche', 3);  

-- Exibir todos os dados da tabela.
select * from Atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
select nome, qtdMedalha from Atleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade.
select * from Atleta where modalidade = 'boliche';

-- Exibir os dados da tabela ordenados pela modalidade.
select * from Atleta order by modalidade;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
select * from Atleta order by qtdMedalha desc;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s.
select * from Atleta where nome like '%s%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
select * from Atleta where nome like 'v%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
select * from Atleta where nome like '%o';

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
select * from Atleta where nome like '%r_';

-- Eliminar a tabela.
drop table Atleta;

/*
Exercício 2
*/

create table Musica(
	idMusica int primary key,
    titulo varchar(40),
    artista varchar(40),
    genero varchar(40)
);

insert into Musica(idMusica, titulo, artista, genero) values
(1, 'Glimpse of us', 'Joji', 'Pop'),
(2, 'The hills', 'The weekend', 'Pop'),
(3, 'Dethroned messiah', 'the troops of doom', 'Rock'),
(4, 'until it doesnt hurt', 'mother mother', 'Rock'),
(5, 'meu lugar', 'arlindo cruz', 'Samba'),
(6, 'Conselho', 'Almir Guineto', 'Samba'),
(7, 'P do Pecado', 'Simone Mendes', 'Pagode'),
(8, 'Até que enfim', 'Ferrugem', 'Pagode');

-- Exibir todos os dados da tabela.
select * from Musica;

-- Exibir apenas os títulos e os artistas das músicas.
select titulo, artista from Musica;

-- Exibir apenas os dados das músicas de um determinado gênero.
select * from Musica where genero = 'rock';

-- Exibir apenas os dados das músicas de um determinado artista.
select * from Musica where artista = 'mother mother';

-- Exibir os dados da tabela ordenados pelo título da música.
select * from Musica order by titulo;

-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
select * from Musica order by artista desc;

-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
select * from Musica where titulo like 'd%';

-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
select * from Musica where artista like '%i';

-- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
select * from Musica where genero like '_o%';

-- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
select * from Musica where titulo like '%r_';

-- Elimine a tabela.
drop table Musica;

/*
Exercício 3
*/

create table Filme(
	idFilme int primary key,
    titulo varchar(50),
    genero varchar(40),
    diretor varchar(40)
);

insert into Filme(idFilme, titulo, genero, diretor) values
(1, 'Pecadores', 'Terror', 'Ryan Coogler'),
(2, 'Frankenstein', 'Terror', 'Guilherme del Toro'),
(3, 'Interestelar', 'Ficção Científica', 'Christopher Nolan'),
(4, 'Matrix', 'Ficção Científica', 'Lana e Lilly Wachowski'),
(5, 'Parasita', 'Suspense', 'Bong Joon-ho'),
(6, 'A origem', 'Suspense', 'Christopher Nolan'),
(7, 'O exterminador do Futuro 2', 'Ação', 'James Cameron');

-- Exibir todos os dados da tabela.
select * from Filme;

-- Exibir apenas os títulos e os diretores dos filmes.
select titulo, diretor from Filme;

-- Exibir apenas os dados dos filmes de um determinado gênero.
select * from Filme where genero = 'Terror';

-- Exibir apenas os dados dos filmes de um determinado diretor.
select * from Filme where diretor = 'Christopher Nolan';

-- Exibir os dados da tabela ordenados pelo título do filme.
select * from Filme order by titulo;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
select * from Filme order by diretor desc;

-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
select * from Filme where titulo like 'p%';

-- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra.
select * from Filme where diretor like '%n';

-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
select * from Filme where genero like '_u%';

-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
select * from Filme where titulo like '%e_';

-- Elimine a tabela.
drop table Filme;

/*
Exercício 4
*/

create table Professor(
	idProfessor int primary key,
    nome varchar(50),
    especialidade varchar(40),
    dtNasc date
);

insert into Professor(idProfessor, nome, especialidade, dtNasc) values
(1, 'Vivian Banco', 'Banco de Dados', '2000-11-05'),
(2, 'Clara Dados', 'Banco de Dados', '2002-08-28'),
(3, 'Mateus Matos', 'Arq. Comp.', '2005-09-21'),
(4, 'Thiago Bonnaceli', 'Socioemocional', '2003-02-19'),
(5, 'Marcos Antonio', 'TI', '1990-03-10'),
(6, 'Giuliana Codigos', 'Algoritmos', '2000-09-01');

-- Exibir todos os dados da tabela.
select * from Professor;

-- Exibir apenas as especialidades dos professores.
select especialidade from Professor;

-- Exibir apenas os dados dos professores de uma determinada especialidade.
select * from Professor where especialidade = 'Banco de Dados';

-- Exibir os dados da tabela ordenados pelo nome do professor.
select * from Professor order by nome;

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
select * from Professor order by dtNasc desc;

-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
select * from Professor where nome like 't%';

-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.
select * from Professor where nome like '%o';

-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.
select * from Professor where nome like '_i%';

-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
select * from Professor where nome like '%o_';

-- Elimine a tabela.
drop table Professor;

/*
Exercício 5
*/

create table Jogo(
	idJogo int primary key,
    nome varchar(50),
    comentario varchar(200),
    ranking int
);

insert into Jogo(idJogo, nome, comentario, ranking) values
(1, 'Roblox', 'Roblox é um jogo feito para crianças e se baseia na criação de jogos pela comunidade', 5),
(2, 'Hollow Knight', 'Hollow Knight é um jogo indie de plataforma com uma história cativante e misteriosa', 1),
(3, 'Minecraft', 'Minecraft é um jogo de blocos divertido quando jogado com amigos', 4),
(4, 'League of Legends', 'League of legends é um jogo bizarro', 2),
(5, 'Valorant', 'Valorant é um jogo FPS competitivo com poderes', 3);

-- Exibir todos os dados da tabela.
select * from Jogo;

-- Exibir apenas os nomes dos jogos.
select nome from Jogo;

-- Exibir apenas o comentário de um determinado jogo.
select comentario from Jogo where nome = 'Minecraft';

-- Exibir os dados da tabela ordenados pelo nome do jogo.
select * from Jogo order by nome;

-- Exibir os dados da tabela ordenados pelo ranking em ordem decrescente.
select * from Jogo order by ranking desc;

-- Exibir os dados da tabela, dos jogos cujo nome comece com uma determinada letra.
select * from Jogo where nome like 'l%';

-- Exibir os dados da tabela, dos jogos cujo nome termine com uma determinada letra.
select * from Jogo where nome like '%t';

-- Exibir os dados da tabela, dos jogos cujo nome tenha como segunda letra uma determinada letra.
select * from Jogo where nome like '_a%';

-- Exibir os dados da tabela, dos jogos cujo nome tenha como penúltima letra uma determinada letra.
select * from Jogo where nome like '%d_';

-- Exibir os dados da tabela, dos jogos cujo nome seja diferente de Minecraft.
select * from Jogo where nome <> 'Minecraft';

-- Elimine a tabela.
drop table Jogo;