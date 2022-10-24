CREATE TABLE carros(

	cod_carro SERIAL primary key,
	des_marca VARCHAR(128),
	des_modelo VARCHAR(128),
	vlr_carro INTEGER,
	num_ano INTEGER

)

	SELECT * FROM carros

	INSERT INTO carros (des_marca, des_modelo, vlr_carro, num_ano) VALUES ('Fiat', 'Uno', 4000, 2002)



	criar coluna
	des_nome_proprietario varchar(128)
  -----------------------------------------  -----------------------------------------  -----------------------------------------
  CREATE TABLE ITENS(
 cod_item SERIAL PRIMARY KEY,
 des_item VARCHAR(128)
)

CREATE TABLE VENDAS (
	COD_VENDA SERIAL,
	NOME_CLIENTE VARCHAR(256),
	DTA_VENDA DATE,
	IND_FORMA_PGTO INTEGER,
	vlr_venda numeric (8,2)
	primary key (cod_venda)
);

CREATE TABLE VENDAS_ITENS(
   cod_venda integer,
   cod_item integer,
   qtd_item numeric (5,2),
   primary key (cod_venda, cod_item),
   foreign key cod_venda references vendas(cod_venda),
   foreign key cod_item references ITENS(cod_item)
)



CREATE TABLE VENDAS_ITENS(
   cod_item_Venda serial,
   cod_venda integer,
   cod_item integer,
   qtd_item numeric (5,2),
   primary key (cod_item_venda),
   foreign key cod_venda references vendas(cod_venda),
   foreign key cod_item references ITENS(cod_item)
)

  -----------------------------------------  -----------------------------------------  -----------------------------------------
  
  CREATE TABLE formas_pgtos (
    cod_forma_pgto serial primary key,
    des_nome varchar

 )


1 cartao
2 pix
3 debito
4 dinheiro
5 rim



CREATE TABLE ITENS(
 cod_item SERIAL PRIMARY KEY,
 des_item VARCHAR(128)
)

1 Coca Cola
2 Abacaxi
3 Ps4
4 nintendo
5 pneu de carro


CREATE TABLE VENDAS (
	COD_VENDA SERIAL,
	NOME_CLIENTE VARCHAR(256),
	DTA_VENDA DATE,
	cod_forma_pgto INTEGER,
	vlr_venda numeric (8,2)
	primary key (cod_venda),
   foreign key cod_forma_pgot references formas_pgto (cod_forma_pgto)
);


1 wendel, hoje, 2, 2300 
2 isaias, amanha, 3, 20



CREATE TABLE VENDAS_ITENS(
   cod_venda integer,
   cod_item integer,
   qtd_item numeric (5,2),
   primary key (cod_venda, cod_item),
   foreign key cod_venda references vendas(cod_venda),
   foreign key cod_item references ITENS(cod_item)
)

1 1 3 1
2 1 1 1
3 2 1 2
4 2 2 2



CREATE TABLE VENDAS_ITENS(
   cod_item_Venda serial,
   cod_venda integer,
   cod_item integer,
   qtd_item numeric (5,2),
   primary key (cod_item_venda),
   foreign key cod_venda references vendas(cod_venda),
   foreign key cod_item references ITENS(cod_item)
)

  -----------------------------------------  -----------------------------------------  -----------------------------------------
  STring sql = "SELECT * FROM USUARIOS WHERE deS_email = '" + param1 + "' AND des_senha ='" + param2 + "'";


String a =  "select * from usuarios where deS_email = 'wendell' and des_senha = '123'";


System.out.println("fefe ' ")


12323

' OR '1'='1

SELECT * FROM USUARIOS WHERE deS_email = 'Wedell' AND des_senha ='' OR '1'='1'


SELECT *FROM JOGOS
WHERE 1=1
AND '2' = '2'
  -----------------------------------------  -----------------------------------------  -----------------------------------------
  select * from jogos

select j.cod_jogo, j.des_nome, j.cod_produtora, p.des_nome
   from jogos j JOIN produtoras p ON p.cod_produtora = j.cod_produtora
	 ORDER BY p.des_nome, j.des_nome;

select j.cod_jogo, j.des_nome, j.cod_produtora, p.des_nome
   from jogos j LEFT JOIN produtoras p ON p.cod_produtora = j.cod_produtora
	 ORDER BY p.des_nome, j.des_nome;

select j.cod_jogo, j.des_nome, j.cod_produtora, p.des_nome
   from jogos j RIGHT JOIN produtoras p ON p.cod_produtora = j.cod_produtora
	 ORDER BY p.des_nome, j.des_nome;


SELECT p.cod_produtora, p.des_nome, count(0)
 FROM produtoras p
 JOIN jogos j ON p.cod_produtora = j.cod_produtora
 GROUP BY p.cod_produtora , p.des_nome
 
 
SELECT p.cod_produtora, p.des_nome, count(j.cod_jogo)
 FROM produtoras p
LEFT JOIN jogos j ON p.cod_produtora = j.cod_produtora
 GROUP BY p.cod_produtora , p.des_nome






INSERT INTO jogos (des_nome, cod_produtora) VALUES ('Uncharted III', 2)

select * from produtoras
insert into produtoras(des_nome) VALUES ('NetEase')

select * from jogos




SELECT p.cod_pai,
     p.des_nome,
	 f.cod_filho,
	 f.des_nome,
	 e.des_nome
	 FROM pais p
	 JOIN filhos f ON f.cod_pai = p.cod_pai
	 JOIN escolas e ON p.cod_escola = e.cod_escola
	 WHERE e.cod_escola = 3
	 
	 
	 SELECT fi.des_nome, ato.des_nome FROM filmes fi
	 JOIN filmes_atores fa ON fa.cod_filme = fi.cod_filme
	 JOIN atores ato ON ato.cod_ator = fa.cod_ator
	 WHERE ato.des_nome LIKE '%C%'
	 --
	 SELECT fi.des_nome, ato.des_nome FROM filmes fi
	 JOIN filmes_atores fa ON fa.cod_filme = fi.cod_filme
	 RIGHT JOIN atores ato ON ato.cod_ator = fa.cod_ator
	 WHERE ato.des_nome LIKE '%R%'
	 
	 insert into atores(des_nome) values('Ratinho')
	 
	 select j.des_nome, p.des_nome
	 from jogos j full outer join produtoras p
	    on p.cod_produtora = j.cod_produtora


TRIGGERS
INDICE
FUNCTION ou PROCEDURE


insert into filmes (cod_filme, des_nome) values (44, 'Missao Impssivel')
insert into filmes (des_nome) values ('Missao Impssivel 4')

