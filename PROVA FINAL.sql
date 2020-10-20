
/*Letra A*/

CREATE DATABASE empresa;
USE empresa;

CREATE TABLE DEPARTAMENTO (
	codigo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL
);
CREATE TABLE FUNCIONARIO (
	codigo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	salario DECIMAL (10, 2) NOT NULL,
	codigo_departamento INT NOT NULL,
	CONSTRAINT FK_departamento FOREIGN KEY (codigo_departamento)
	REFERENCES DEPARTAMENTO (codigo)
);

/*Letra B*/

INSERT INTO DEPARTAMENTO (nome)
VALUES ('RH'),
	   ('TI'),
	   ('Financeiro');

INSERT INTO FUNCIONARIO (nome, salario, codigo_departamento)
VALUES ('João Silva', '2000,00', '1'),
	   ('Maria Pereira', '3000,00', '2'),
	   ('José Peres', '4000,00', '2'),
	   ('Tereza Cristina', '3000,00', '3'),
	   ('Francisco José', '1500,00', '3');
	   
/*Letra C*/

UPDATE FUNCIONARIO SET salario = '5000,00' WHERE codigo = 3;

/*Letra D*/

SELECT d.nome, COUNT(f.codigo_departamento) AS qtd_funcionarios,
	SUM(f.salario) AS salario_total
	FROM DEPARTAMENTO AS d
	LEFT JOIN FUNCIONARIO AS f
	ON d.codigo = f.codigo_departamento
	GROUP BY d.nome;
	
/*LETRA E*/

DELETE FROM FUNCIONARIO WHERE codigo = 5;
	
	
	
	
	
	
