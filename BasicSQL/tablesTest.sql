--FOREIGN KEY
CREATE TABLE jogos(
	cod_jogo SERIAL PRIMARY KEY,
	des_nome VARCHAR(128),
	cod_produtora INTEGER,
  	CONSTRAINT fk_produtoras FOREIGN KEY (cod_produtora) REFERENCES produtoras (cod_produtora)
)

--DROP TABLE produtoras
CREATE TABLE produtoras(
	cod_produtora SERIAL PRIMARY KEY,
	des_nome VARCHAR(128)
)

--INSERT

INSERT INTO produtoras (des_nome) VALUES ('Riot')
INSERT INTO produtoras (des_nome) VALUES ('Sony')
INSERT INTO produtoras (des_nome) VALUES ('Blizzard')
INSERT INTO produtoras (des_nome) VALUES ('Rockstar Games')

INSERT INTO jogos (des_nome, cod_produtora) VALUES ('League Of Legends', 1)
INSERT INTO jogos (des_nome, cod_produtora) VALUES ('Uncharted', 2)
INSERT INTO jogos (des_nome, cod_produtora) VALUES ('Diablo III Reaper of Souls', 3)
INSERT INTO jogos (des_nome, cod_produtora) VALUES ('GTA', 4)


INSERT INTO produtoras (des_nome) VALUES ('Activision')

--INSERT
select DISTINCT jo.cod_jogo, jo.des_nome, pro.des_nome from jogos jo
RIGHT JOIN produtoras pro ON pro.cod_produtora = jo.cod_produtora
ORDER BY jo.cod_jogo


--EXISTS
SELECT * FROM carros
WHERE EXISTS(
SELECT * FROM produtoras)

SELECT * FROM produtoras pro
FULL OUTER JOIN jogos jo ON jo.cod_produtora = pro.cod_produtora
WHERE jo.cod_jogo = ''
-------------------------------------
CREATE TABLE filmes(
	cod_filme SERIAL PRIMARY KEY,
	des_nome VARCHAR(128),
	num_ano INTEGER
)
CREATE TABLE atores(
	cod_ator SERIAL PRIMARY KEY,
	des_nome VARCHAR(128),
	num_idade INTEGER,
	cod_filme INTEGER,
	CONSTRAINT fk_filmes FOREIGN KEY (cod_filme) REFERENCES filmes (cod_filme)
)

CREATE TABLE filmes_atores(
cod_filme_ator SERIAL PRIMARY KEY,
cod_filme INTEGER,
cod_ator INTEGER,
CONSTRAINT fk_filmes FOREIGN KEY (cod_filme) REFERENCES filmes (cod_filme),
CONSTRAINT fk_atores FOREIGN KEY (cod_ator) REFERENCES atores (cod_ator)
)
INSERT INTO filmes (des_nome, num_ano) VALUES ('Vingadores Ultimato', 2019),
INSERT INTO filmes (des_nome, num_ano) VALUES ('Mulan', 2020),
INSERT INTO filmes (des_nome, num_ano) VALUES ('Soul', 2020),
INSERT INTO filmes (des_nome, num_ano) VALUES ('Mortal Kombat', 2020),
INSERT INTO filmes (des_nome, num_ano) VALUES ('Cruella', 2021),
INSERT INTO filmes (des_nome, num_ano) VALUES ('Morbius', 2021),
INSERT INTO filmes (des_nome, num_ano) VALUES ('Uncharted: Fora do mapa', 2022),
INSERT INTO filmes (des_nome, num_ano) VALUES ('Thor: Amor e Trovão', 2022),
INSERT INTO filmes (des_nome, num_ano) VALUES ('Adão Negro', 2022)

select * from filmes
select * from atores

INSERT INTO filmes (des_nome, num_ano) VALUES ('Velozes e furiosos 7', 2015),
INSERT INTO filmes (des_nome, num_ano) VALUES ('Avatar', 2009),
INSERT INTO filmes (des_nome, num_ano) VALUES ('Top Gun 2', 2022)
INSERT INTO filmes (des_nome, num_ano) VALUES ('Logan', 2017)
INSERT INTO filmes (des_nome, num_ano) VALUES ('Percy Jackson e o Mar de Monstros', 2013)
INSERT INTO filmes (des_nome, num_ano) VALUES ('Piratas do Caribe Navegando em Aguas Misteriosas', 2011)

alter table atores drop column num_idade
alter table atores drop column cod_filme
--Vingadores
INSERT INTO atores(des_nome) VALUES ('Robert Downey Jr.');
INSERT INTO atores(des_nome) VALUES ('Chris Evans');
INSERT INTO atores(des_nome) VALUES ('Scarlett Johansson');
INSERT INTO atores(des_nome) VALUES ('Chris Hemsworth');
INSERT INTO atores(des_nome) VALUES ('Mark Ruffalo');
INSERT INTO atores(des_nome) VALUES ('Jeremy Renner');
INSERT INTO atores(des_nome) VALUES ('Paul Rudd');
INSERT INTO atores(des_nome) VALUES ('Elizabeth Olsen');
INSERT INTO atores(des_nome) VALUES ('Tom Holland');
INSERT INTO atores(des_nome) VALUES ('Chadwick Boseman');
INSERT INTO atores(des_nome) VALUES ('Don Cheadle');
INSERT INTO atores(des_nome) VALUES ('Chris Pratt');
INSERT INTO atores(des_nome) VALUES ('Tessa Thompson');
INSERT INTO atores(des_nome) VALUES ('Tilda Swinton');
INSERT INTO atores(des_nome) VALUES ('Gwyneth Paltrow');
INSERT INTO atores(des_nome) VALUES ('Jon Favreau');
INSERT INTO atores(des_nome) VALUES ('Anthony Mackie');
INSERT INTO atores(des_nome) VALUES ('Benedict Cumberbatch');
INSERT INTO atores(des_nome) VALUES ('Tom Hiddleston')

select * from atores order by 2

delete from filmes where num_ano is null
--Mulan
INSERT INTO atores(des_nome) VALUES ('Liu Yfei');
INSERT INTO atores(des_nome) VALUES ('Jet Li');
INSERT INTO atores(des_nome) VALUES ('Donnie Yen');
INSERT INTO atores(des_nome) VALUES ('Gong Li');
INSERT INTO atores(des_nome) VALUES ('Jason ScottLee');
INSERT INTO atores(des_nome) VALUES ('Jimmy Wong');
INSERT INTO atores(des_nome) VALUES ('Doua Moua');
INSERT INTO atores(des_nome) VALUES ('Tzi Ma');
INSERT INTO atores(des_nome) VALUES ('Ming-Na Wen');
INSERT INTO atores(des_nome) VALUES ('Rong Yuan');
INSERT INTO atores(des_nome) VALUES ('Rosalind Chao')

select * from filmes
---Cruella
INSERT INTO atores(des_nome) VALUES ('Emma Stone');
INSERT INTO atores(des_nome) VALUES ('Emma Thompson');
INSERT INTO atores(des_nome) VALUES ('Joel Fry');
INSERT INTO atores(des_nome) VALUES ('John McCrea');
INSERT INTO atores(des_nome) VALUES ('Mark Strong');
INSERT INTO atores(des_nome) VALUES ('Paul Walter');
INSERT INTO atores(des_nome) VALUES ('Andrew Leung');
INSERT INTO atores(des_nome) VALUES ('Emily Beecham');
INSERT INTO atores(des_nome) VALUES ('Jamie demetriou')
------morbius
INSERT INTO atores(des_nome) VALUES ('Jared Leto');
INSERT INTO atores(des_nome) VALUES ('Matt Smith');
INSERT INTO atores(des_nome) VALUES ('Adria Arjona');
INSERT INTO atores(des_nome) VALUES ('Michael Keaton');
INSERT INTO atores(des_nome) VALUES ('Tyrese Gibson');
INSERT INTO atores(des_nome) VALUES ('Jared Harris');
INSERT INTO atores(des_nome) VALUES ('Andrew Leung');
INSERT INTO atores(des_nome) VALUES ('Al Madrigal');
INSERT INTO atores(des_nome) VALUES ('Corey Johnson');
INSERT INTO atores(des_nome) VALUES ('Clara Rosager');
INSERT INTO atores(des_nome) VALUES ('Charlie shotwell');
INSERT INTO atores(des_nome) VALUES ('Tom Forbes')


--Uncharted
INSERT INTO atores(des_nome) VALUES ('Sophia Taylor');
INSERT INTO atores(des_nome) VALUES ('Mark Wahlberg');
INSERT INTO atores(des_nome) VALUES ('Tati Gabrielle');
INSERT INTO atores(des_nome) VALUES ('Rudy Pankow');
INSERT INTO atores(des_nome) VALUES ('Nolan North');
INSERT INTO atores(des_nome) VALUES ('Antonio Banderas');
INSERT INTO atores(des_nome) VALUES ('Alana Boden');
INSERT INTO atores(des_nome) VALUES ('Johan Philip Asbaek');
INSERT INTO atores(des_nome) VALUES ('Tiernan Jones')

select* from filmes

--Velozes e furiosos
INSERT INTO atores(des_nome) VALUES ('Paul Walker');
INSERT INTO atores(des_nome) VALUES ('Nathalie Emmanuel');
INSERT INTO atores(des_nome) VALUES ('Jason Statham');
INSERT INTO atores(des_nome) VALUES ('Vin Diesel');
INSERT INTO atores(des_nome) VALUES ('Michelle Rodriguez');
INSERT INTO atores(des_nome) VALUES ('Ronda Rousey');
INSERT INTO atores(des_nome) VALUES ('Tyresse Gibson');
INSERT INTO atores(des_nome) VALUES ('Kurt Russel');
INSERT INTO atores(des_nome) VALUES ('Ludacris');
INSERT INTO atores(des_nome) VALUES ('Gal Gadot');
INSERT INTO atores(des_nome) VALUES ('Jordana Brewster')

select * from filmes_atores
--vinagdores
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,1);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,2);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,3);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,4);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,5);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,6);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,7);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,8);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,9);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,10);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,11);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,12);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,13);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,14);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,15);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,16);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,17);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,18);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (1,19)

--mulan
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,20);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,21);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,22);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,23);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,24);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,25);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,26);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,27);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,28);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,29);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (2,30)

--Cruella
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (5,31);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (5,32);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (5,33);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (5,34);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (5,35);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (5,36);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (5,37);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (5,38);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (5,39)

51
--Morbius
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,40);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,41);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,42);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,43);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,44);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,45);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,46);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,47);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,48);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,49);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,50);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (6,51)


--Uncharted
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (7,52);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (7,53);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (7,54);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (7,55);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (7,56);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (7,57);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (7,58);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (7,59);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (7,60);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (7,9)

drop table filmes_atores
--Velozes e furiosos
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,74);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,75);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,76);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,77);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,78);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,79);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,80);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,81);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,82);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,83);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,84);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (10,63)

--adao negro
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,63);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,64);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,65);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,66);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,67);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,68);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,69);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,70);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,71);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,72);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (9,73)

select * from filmes_atores

delete from filmes_atores where cod_filme = 10

--thor amor e trovao
62 13 63 4 65 64 
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (8,62);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (8,13);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (8,63);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (8,4);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (8,65);
INSERT INTO filmes_atores(cod_filme, cod_ator) VALUES (8,64)

select * from filmes fi
join filmes_atores fa on fa.cod_filme = fi.cod_filme
join atores ato on ato.cod_ator = fa.cod_ator
where fi.cod_filme = 7
