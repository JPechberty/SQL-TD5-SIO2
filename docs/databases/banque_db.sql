CREATE DATABASE banque_db;
USE banque_db;

CREATE TABLE Comptes (
     numero_compte INT PRIMARY KEY,
     nom_client VARCHAR(100) NOT NULL,
     solde DECIMAL(15,2) NOT NULL
);

CREATE TABLE Transactions (
      id INT PRIMARY KEY AUTO_INCREMENT,
      numero_compte INT,
      type_operation VARCHAR(50),
      montant DECIMAL(15,2),
      date_transaction TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      FOREIGN KEY (numero_compte) REFERENCES Comptes(numero_compte)
);