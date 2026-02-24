

-- create
CREATE TABLE USER (
  id INTEGER PRIMARY KEY,
  name VARCHAR(254) NOT NULL,
  cpf CHAR(14) NOT NULL UNIQUE,          
  data_nasc DATE NOT NULL,               
  email VARCHAR(254) NOT NULL,
  dept TEXT NOT NULL  
); 

INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (1, 'Ana', '123.456.789-00', '1995-05-15', 'ana@email.com', 'Sales');
INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (2, 'Pedro', '987.654.321-11', '1990-10-20', 'pedro@email.com', 'Accounting');
INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (3, 'Pedroa', '987.651.321-11', '1990-10-20', 'pedro1@email.com', 'Accounting');
INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (4, 'Pedrob', '987.652.321-11', '1990-10-20', 'pedro2@email.com', 'Accounting');
INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (5, 'Pedroc', '987.653.321-11', '1990-10-20', 'pedro3@email.com', 'Accounting');
INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (6, 'Pedrod', '987.655.321-11', '1990-10-20', 'pedro4@email.com', 'Accounting');
INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (7, 'Pedroe', '987.656.321-11', '1990-10-20', 'pedro5@email.com', 'Accounting');
INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (8, 'Pedror', '987.657.321-11', '1990-10-20', 'pedro6@email.com', 'Accounting');
INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (9, 'Pedrot', '987.658.321-11', '1990-10-20', 'pedro7@email.com', 'Accounting');
INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (10, 'Pedroi', '987.659.321-11', '1990-10-20', 'pedro8@email.com', 'Accounting');
INSERT INTO USER (id, name, cpf, data_nasc, email, dept) VALUES (11, 'Pedrofreefire', '987.659.321-21', '1990-10-20', 'pedro9@email.com', 'Accounting');

-- fetch 
 CREATE TABLE endereco (
  id INT PRIMARY KEY,
  rua TEXT,
  cidade TEXT,
  numero_casa VARCHAR(10),
  user_id INT, 
  FOREIGN KEY (user_id) REFERENCES USER(id) 
  ); 
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (1, 'Rua das Flores', 'Salvador', '100', 1);
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (2, 'Av. Brasil', 'São Paulo', '500', 2);
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (3, 'Rua A', 'Curitiba', '10', 3);
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (4, 'Rua B', 'Belo Horizonte', '20', 4);
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (5, 'Rua C', 'Porto Alegre', '30', 5);
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (6, 'Rua D', 'Rio de Janeiro', '40', 6);
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (7, 'Rua E', 'Fortaleza', '50', 7);
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (8, 'Rua F', 'Recife', '60', 8);
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (9, 'Rua G', 'Manaus', '70', 9);
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (10, 'Rua H', 'Brasília', '80', 10);
INSERT INTO endereco (id, rua, cidade, numero_casa, user_id) VALUES (11, 'Rua do Game', 'Goiania', '99', 11);

SELECT 
    USER.id, 
    USER.name, 
    endereco.rua, 
    endereco.cidade, 
    USER.dept
FROM USER
INNER JOIN endereco ON USER.id = endereco.user_id;
  
);
