CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint(5) AUTO_INCREMENT,
    tipo varchar(30) not null,
    tamanho varchar(30) not null,

	PRIMARY KEY (id)
);

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
	id bigint(5) AUTO_INCREMENT,
    nomeCliente varchar(255),
    sabor varchar(255) not null,
    preco decimal (6,2),
    bordaRecheada boolean,
    categoria_id bigint(5) not null,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo,tamanho) VALUES("Doce","Média");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Salgada","Grande");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Salgada","Média");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Doce","Pequena");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Salgada","Pequena");

SELECT * FROM tb_categorias; -- Verificando se deu certo

INSERT INTO tb_pizzas(nomeCliente,sabor,preco,bordaRecheada,categoria_id) 
	VALUES ("João","Napolitano","67.00",false,1);
INSERT INTO tb_pizzas(nomeCliente,sabor,preco,bordaRecheada,categoria_id) 
	VALUES ("Mariana","Moda","85.00",true,2);
INSERT INTO tb_pizzas(nomeCliente,sabor,preco,bordaRecheada,categoria_id) 
	VALUES ("Ana","4 queijos","40.00",false,5);
INSERT INTO tb_pizzas(nomeCliente,sabor,preco,bordaRecheada,categoria_id) 
	VALUES ("Gabriel","Frango com catupiry","50.00",false,3);
INSERT INTO tb_pizzas(nomeCliente,sabor,preco,bordaRecheada,categoria_id) 
	VALUES ("Leonardo","Napolitano","41.00",false,1);
INSERT INTO tb_pizzas(nomeCliente,sabor,preco,bordaRecheada,categoria_id) 
	VALUES ("José","4 queijos","110.00",true,2);
INSERT INTO tb_pizzas(nomeCliente,sabor,preco,bordaRecheada,categoria_id) 
	VALUES ("Carla","Nutella","75.00",true,1);
INSERT INTO tb_pizzas(nomeCliente,sabor,preco,bordaRecheada,categoria_id) 
	VALUES ("Lucas","Goiabada","43.00",false,4);
    
SELECT * FROM tb_pizzas; -- Verificando se deu certo   

SELECT * FROM tb_pizzas where preco > 45;

SELECT * FROM tb_pizzas where preco > 50 and preco < 100;

SELECT * FROM tb_pizzas where sabor like "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id
	where tb_categorias.tipo = "Doce";