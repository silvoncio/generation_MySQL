CREATE DATABASE db_farmacia;

USE db_farmacia;

CREATE TABLE tb_categorias(
	id bigint auto_increment, 
    nomeCategoria varchar(255),
    setor varchar(255),
	
    primary key(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (nomeCategoria,setor) 
	VALUES ("Anti-Inflamatório", "Medicamento"); /*ou Balcão*/
INSERT INTO tb_categorias (nomeCategoria,setor) 
	VALUES ("Suplementos", "Fitnes");
INSERT INTO tb_categorias (nomeCategoria,setor) 
	VALUES ("Antibiótico", "Medicamento");
INSERT INTO tb_categorias (nomeCategoria,setor) 
	VALUES ("Creme", "Cosmético");
    
USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
	nomeProduto varchar(255),
    valor decimal(9,2),
    quantidade int,
    marca varchar(255),
	categoria_id bigint,
    
    primary key (id),
    foreign key (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nomeProduto,valor,quantidade,marca,categoria_id)
	VALUES ("Creme pele seca",23.00,14,"Natura",4);
INSERT INTO tb_produtos (nomeProduto,valor,quantidade,marca,categoria_id)
	VALUES ("Paracetamol",30.00,10,"Genérico",1);
INSERT INTO tb_produtos (nomeProduto,valor,quantidade,marca,categoria_id)
	VALUES ("Amoxicilina",95.00,15,"Genérico",3);
INSERT INTO tb_produtos (nomeProduto,valor,quantidade,marca,categoria_id)
	VALUES ("Creatina",115.00,6,"MaxTitanium",2);
INSERT INTO tb_produtos (nomeProduto,valor,quantidade,marca,categoria_id)
	VALUES ("Termogênico",55.00,5,"Probiótica",2);
INSERT INTO tb_produtos (nomeProduto,valor,quantidade,marca,categoria_id)
	VALUES ("Creme pele oleosa",23.00,14,"Natura",4);
INSERT INTO tb_produtos (nomeProduto,valor,quantidade,marca,categoria_id)
	VALUES ("Dipirona",45.00,10,"Medley",1);
INSERT INTO tb_produtos (nomeProduto,valor,quantidade,marca,categoria_id)
	VALUES ("Whey Protein",170.00,25,"MaxTitanium",2);

SELECT * FROM tb_produtos; -- Conferir se deu certo.

SELECT * FROM tb_produtos where valor > 50;

SELECT * FROM tb_produtos where valor > 5 and valor < 60;

SELECT * FROM tb_produtos where nomeProduto like "%c%";

SELECT * FROM tb_produtos 
	INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
    
SELECT * FROM tb_produtos 
	INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
    where tb_categorias.nomeCategoria = "Suplementos";