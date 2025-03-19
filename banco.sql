CREATE TABLE Animal 
( 
 Nome VARCHAR(100),  
 Raça VARCHAR(50),  
 Número_coleira INT PRIMARY KEY  
); 

CREATE TABLE Dono 
( 
 CPF INT PRIMARY KEY,  
 Telefone VARCHAR(15),  
 Nome VARCHAR(100),  
 Endereço VARCHAR(200)  
); 

CREATE TABLE Pertence 
( 
 CPF INT,  
 Número_coleira INT,  
 PRIMARY KEY (CPF, Número_coleira)  
); 

ALTER TABLE Pertence ADD FOREIGN KEY (CPF) REFERENCES Dono (CPF);  
ALTER TABLE Pertence ADD FOREIGN KEY (Número_coleira) REFERENCES Animal (Número_coleira);
