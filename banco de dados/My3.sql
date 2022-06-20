CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id bigint(5) AUTO_INCREMENT,
	nome varchar(30) not NULL,
	turma varchar(5) not NULL,
	nota decimal(4,2),
	modulo bigint(1) not null,

	PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome,turma,nota,modulo) VALUES("Joao", "T52", 8.0, 1);
INSERT INTO tb_estudantes (nome,turma,nota,modulo) VALUES("Isabela", "T52", 5.0, 1);
INSERT INTO tb_estudantes (nome,turma,nota,modulo) VALUES("Maria", "T53", 5.7, 1);
INSERT INTO tb_estudantes (nome,turma,nota,modulo) VALUES("Lucas", "T53", 3.0, 1);
INSERT INTO tb_estudantes (nome,turma,nota,modulo) VALUES("Rafaela", "T52", 6.0, 1);
INSERT INTO tb_estudantes (nome,turma,nota,modulo) VALUES("Matheus", "T53", 7.5, 1);
INSERT INTO tb_estudantes (nome,turma,nota,modulo) VALUES("Julia", "T52", 9.0, 1);
INSERT INTO tb_estudantes (nome,turma,nota,modulo) VALUES("Gabriel", "T53", 10.0, 3);


SELECT * from tb_estudantes; -- conferir se tudo foi feito certinho

SELECT * from tb_estudantes where nota > 7.0;

SELECT * from tb_estudantes where nota < 7.0;

UPDATE tb_estudantes SET modulo = 2 where id = 1;
UPDATE tb_estudantes SET modulo = 2 where id = 2;
UPDATE tb_estudantes SET modulo = 2 where id = 3;
UPDATE tb_estudantes SET modulo = 2 where id = 4;
UPDATE tb_estudantes SET modulo = 2 where id = 5;
UPDATE tb_estudantes SET modulo = 2 where id = 6;
UPDATE tb_estudantes SET modulo = 2 where id = 7;


SELECT * from tb_estudantes;