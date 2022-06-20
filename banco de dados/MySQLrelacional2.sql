CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    nome_produto varchar(255), -- varchar equivale ao String
    valor decimal(6,2), -- decimal equivale ao double
    marca varchar(20),
    quantidade int,
    rgb boolean,
    
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

-- Por falta de criatividade, vou inserir produtor do meu setup.
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,rgb) VALUES("Headset Redragon Zeus X",330.00,"Redragon",1,true);
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,rgb) VALUES("Teclado Mecânico T-Dagger",199.00,"T-Dagger",1,true);
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,rgb) VALUES("Mouse Razer Viper-mini",230.00,"Razer",1,true);
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,rgb) VALUES("Monitor Gamer AOC 144hz",1449.00,"AOC",2,true);
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,rgb) VALUES("Webcam Logitech C920S",349.00,"Logitech",1,true);
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,rgb) VALUES("Processador AM4 Ryzen 3 3300x",999.00,"AMD",99,false);
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,rgb) VALUES("Placa de Vídeo RX550 Randeon",599.00,"Afox",15,false);
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,rgb) VALUES("1x8 Mémória Ram 3200mhz",229.00,"T-Force Pichau",7,false);

SELECT * FROM tb_produtos where valor > 500;

SELECT * FROM tb_produtos where valor < 500;

UPDATE tb_produtos SET rgb = false, quantidade = 1 where id = 4; -- meu sonho ter 2 monitor hahaha
UPDATE tb_produtos SET quantidade = 1 where id = 6;
UPDATE tb_produtos SET quantidade = 1 where id = 7;
UPDATE tb_produtos SET quantidade = 2 where id = 8;

SELECT * FROM tb_produtos;