CREATE DATABASE db_generation_game_online; -- tendo como inspiração o LOL para os atributos

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint(5) AUTO_INCREMENT,
    posicao varchar(10) not NULL, -- pensando no lolzin (top,jg,mid e bot).
    funcao varchar(15) not NULL,
    
    PRIMARY KEY (id)
);

USE db_generation_game_online;

CREATE TABLE tb_personagens(
	id bigint(5) AUTO_INCREMENT,
    nome varchar(20) not NULL,
    estiloJogo varchar(15), -- Ataque básico,Habilidades ou Híbrido.
    fonteDano varchar(15), -- Dano Físico, Dano Mágico ou Misto.
    dificuldade bigint(1), -- de 1 a 10.
    poderAtaque bigint(4),
    poderDefesa bigint(4),
    classe_id bigint not NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes (id) -- Chave estrangeira
);


INSERT INTO tb_classes (posicao,funcao) VALUES("TOP","tanque");
INSERT INTO tb_classes (posicao,funcao) VALUES("JUNGLE","assassino");
INSERT INTO tb_classes (posicao,funcao) VALUES("MID","mago");
INSERT INTO tb_classes (posicao,funcao) VALUES("BOT","atirador");
INSERT INTO tb_classes (posicao,funcao) VALUES("BOT","suporte");

SELECT * FROM tb_classes; -- CONFERINDO SE DEU CERTO

INSERT INTO tb_personagens (nome,estiloJogo,fonteDano,dificuldade,poderAtaque,poderDefesa,classe_id) 
	VALUES("Ornn","Híbrido","Misto",8,600,2550,1);
INSERT INTO tb_personagens (nome,estiloJogo,fonteDano,dificuldade,poderAtaque,poderDefesa,classe_id) 
	VALUES("Evelynn","Habilidades","Dano Mágico",7,1900,1150,2);
INSERT INTO tb_personagens (nome,estiloJogo,fonteDano,dificuldade,poderAtaque,poderDefesa,classe_id) 
	VALUES("Syndra","Habilidades","Dano Mágico",8,2300,900,3);
INSERT INTO tb_personagens (nome,estiloJogo,fonteDano,dificuldade,poderAtaque,poderDefesa,classe_id) 
	VALUES("Caitlyn","Ataque Básico","Dano Físico",3,2100,1100,4);
INSERT INTO tb_personagens (nome,estiloJogo,fonteDano,dificuldade,poderAtaque,poderDefesa,classe_id) 
	VALUES("Lulu","Habilidades","Dano Mágico",2,850,500,5);
INSERT INTO tb_personagens (nome,estiloJogo,fonteDano,dificuldade,poderAtaque,poderDefesa,classe_id) 
	VALUES("Cho'Gath","Habilidades","Mágico",3,850,2250,1);
INSERT INTO tb_personagens (nome,estiloJogo,fonteDano,dificuldade,poderAtaque,poderDefesa,classe_id) 
	VALUES("Kayn","Híbrido","Dano Físico",4,1550,1500,2);
INSERT INTO tb_personagens (nome,estiloJogo,fonteDano,dificuldade,poderAtaque,poderDefesa,classe_id)  
	VALUES("Sona","Habilidades","Dano Mágico",1,1150,200,5);

SELECT * FROM tb_personagens; -- CONFERINDO SE DEU CERTO

SELECT * FROM tb_personagens where poderAtaque > 2000;

SELECT * FROM tb_personagens where poderDefesa > 1000 and poderDefesa <2000;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id
	where tb_classes.funcao = "tanque";