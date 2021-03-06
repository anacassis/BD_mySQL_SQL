/* CONSTRAINTS */

/* NOT NULL */
CREATE DATABASE constrains;
USE constrains;
CREATE TABLE pessoas (
   nome VARCHAR(100) NOT NULL, 
   idade INT
);
INSERT INTO pessoas (nome,idade) VALUES ("Mateus", 30);
SELECT * FROM pessoas;
INSERT INTO pessoas (nome) VALUES ("Carol");
CREATE TABLE pessoas2 (
   nome VARCHAR(100) NOT NULL, 
   idade INT NOT NULL
);
SELECT * FROM pessoas2;
INSERT INTO pessoas2 (nome,idade) VALUES ("",15);

/* UNIQUE*/
ALTER TABLE pessoas ADD COLUMN email VARCHAR(100) UNIQUE;
select * from pessoas;
INSERT INTO pessoas VALUES ("Maria",30, "marian@gmail.com"); /* email com valor unico*/ 

/* PRIMARY KEY */
CREATE TABLE produtos (
   id INT NOT NULL,
   nome VARCHAR (50),
   SKU VARCHAR (10),
   PRIMARY KEY(id,SKU)
   );
SELECT * FROM produtos;

INSERT INTO produtos VALUES (1, "fogao", "12sdd");
INSERT INTO produtos (id,nome, sku) VALUES (1,"batedeira", "15kkkk");
INSERT INTO produtos VALUES (3, "tvSamsung", "125dklki");

UPDATE produtos SET sku= "1agsd" WHERE id=2;

DELETE FROM produtos WHERE id = 0;

SELECT * FROM produtos;

/* AUTO INCREMENT */
CREATE TABLE frutas (
      id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      nome VARCHAR (100));
      
USE constrains;
INSERT INTO frutas (nome) VALUES ("Mamao");
SELECT * FROM frutas;
INSERT INTO frutas (nome) VALUES ("morango");
INSERT INTO frutas (nome) VALUES ("Manga");
DELETE FROM frutas WHERE id=2;
INSERT INTO frutas (nome) VALUES ("Caqui");

/* FOREIGN KEY */
DROP TABLE pessoas;
CREATE TABLE pessoas (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR (100),
    idade INT);
    
CREATE TABLE endereço(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    rua VARCHAR(100),
    numero VARCHAR(10),
    pessoas_id  INT NOT NULL,
    foreign key (pessoas_id) REFERENCES pessoas(id));
SELECT * FROM endereço;
SELECT * FROM pessoas;
INSERT INTO pessoas(nome, idade) VALUES ("Maria", 30);
INSERT INTO endereço(rua,numero, pessoas_id) VALUES ("Jose bolifacio", "125", 1);
UPDATE pessoas SET idade=19 WHERE id=2;
UPDATE pessoas SET nome= "Joao" WHERE id=2;
INSERT INTO pessoas(nome,idade) VALUES ("Eduardo",35);
INSERT INTO pessoas (nome, idade) VALUES ("Gabriela", 42);
UPDATE pessoas SET nome = "Silva" WHERE id= 5;
SELECT * FROM pessoas;
SELECT * FROM endereço;
INSERT INTO endereço(rua, numero, pessoas_id) VALUES("EXEMPLO2","1",2);

/*  INDEX */
USE employees;
SELECT * FROM employees;

CREATE INDEX index_name
ON employees(first_name);

SELECT * FROM employees;

/* REMOVENDO INDEX */
DROP INDEX index_name ON employees;