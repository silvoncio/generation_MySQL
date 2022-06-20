CREATE DATABASE db_brecho;

USE db_brecho;

CREATE TABLE tb_itens(
	id bigint(5) AUTO_INCREMENT,
    nome_item varchar(30) not NULL,
    marca varchar(20),
    cor varchar(20),
    valor decimal(6,2),
    dia varchar(11), -- dia que foi feito a venda
    
    PRIMARY KEY (id)
);

INSERT INTO tb_itens (nome_item,marca,cor,valor,dia) VALUES("Camisa","Adidas","branca",43.50,"22/02/2022");
INSERT INTO tb_itens (nome_item,marca,cor,valor,dia) VALUES("Tênis","Nike","preto",129.99,"23/02/2022");
INSERT INTO tb_itens (nome_item,marca,cor,valor,dia) VALUES("Meia","Polo","branca",2.50,"24/02/2022");
INSERT INTO tb_itens (nome_item,marca,cor,valor,dia) VALUES("Camisa","Nike","cinza",63.50,"25/02/2022");
INSERT INTO tb_itens (nome_item,marca,cor,valor,dia) VALUES("Callçça","Lacoste","azul",60.00,"26/02/2022");
INSERT INTO tb_itens (nome_item,marca,cor,valor,dia) VALUES("Calça moletom","Skinny","cinza",29.90,"27/02/2022");
INSERT INTO tb_itens (nome_item,marca,cor,valor,dia) VALUES("Luvas","KIICN","preta",9.90,"28/02/2022");
INSERT INTO tb_itens (nome_item,marca,cor,valor,dia) VALUES("Óculos","Okley","verde",166.00,"01/03/2022");

SELECT * from tb_itens; -- conferindo se ta tudo certinho

SELECT * from tb_itens where valor > 50;

SELECT * from tb_itens where valor < 50;

SELECT * from tb_itens where id = 2;

UPDATE tb_itens SET nome_item = "Calça Jeans" where id = 5;

DELETE FROM tb_itens where id = 2;

DELETE FROM tb_itens where id = 3;

SELECT * from tb_itens;