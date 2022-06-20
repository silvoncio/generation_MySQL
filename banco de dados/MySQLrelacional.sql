CREATE DATABASE db_empresa;

USE db_empresa;
CREATE TABLE tb_colaboradores(
	id bigint(5) AUTO_INCREMENT,
	nome varchar(30) not NULL,
	cpf bigint(11) not NULL,
	salario decimal(8,2),
	ferias boolean,

	PRIMARY KEY (id)
);
INSERT INTO tb_colaboradores (nome,cpf,salario,ferias) VALUES("Joao",01234567891,2350.00,false);
INSERT INTO tb_colaboradores (nome,cpf,salario,ferias) VALUES("Maria",12345678912,1850.00,true);
INSERT INTO tb_colaboradores (nome,cpf,salario,ferias) VALUES("Ana",23456789123,3850.00,false);
INSERT INTO tb_colaboradores (nome,cpf,salario,ferias) VALUES("Alex",45678912345,3350.00,false);
INSERT INTO tb_colaboradores (nome,cpf,salario,ferias) VALUES("Marcos",67891234567,1350.00,true);

SELECT * from tb_colaboradores; -- conferir se tudo foi feito certinho

SELECT * from tb_colaboradores where salario > 2000;

SELECT * from tb_colaboradores where salario < 2000;

UPDATE tb_colaboradores SET salario = 3050.00 where id = 4;

SELECT * from tb_colaboradores;