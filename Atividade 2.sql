/*ATIVIDADE 2
LETRA A*/

CREATE DATABASE carros;
USE carros;

CREATE TABLE marca (
	codigo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR (40) NOT NULL,
	pais VARCHAR (40) NOT NULL
);

CREATE TABLE modelo (
	codigo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR (40) NOT NULL,
	categoria VARCHAR (40) NOT NULL,
	cor VARCHAR (40) NOT NULL,
	codigo_marca INT NOT NULL,
	CONSTRAINT FK_codigo FOREIGN KEY (codigo_marca)
	REFERENCES marca (codigo)
);


/*LETRA B*/

INSERT INTO marca (nome, pais)
	VALUES ('Volkswagen', 'Alemanha'), ('Ford', 'EUA'), ('Fiat', 'Itália'), ('GM', 'EUA');

INSERT INTO modelo (nome, categoria, cor, codigo_marca)
	VALUES ('Gol', 'Hatch', 'preto', '1'), ('Palio', 'Hacth', 'vermelho', '3'), ('Ecosport', 'SUV', 'azul', '2'), ('Fox', 'Família', 'preto', '1');


/*LETRA C*/

UPDATE modelo SET cor = 'Cinza' WHERE codigo = 4;


/*LETRA D*/

SELECT m.nome, m.pais, COUNT(d.codigo_marca) AS numero_de_carros
	FROM marca AS m
	LEFT JOIN modelo AS d
	ON m.codigo = d.codigo_marca
	GROUP BY m.nome;
	
/*LETRA E*/

DELETE FROM marca WHERE codigo = 4;