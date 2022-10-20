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

--INSERT
select DISTINCT jo.cod_jogo, jo.des_nome, pro.des_nome from jogos jo
RIGHT JOIN produtoras pro ON pro.cod_produtora = jo.cod_produtora
ORDER BY jo.cod_jogo


--EXISTS
SELECT * FROM carros
WHERE EXISTS(
SELECT * FROM produtoras)



