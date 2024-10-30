CREATE DATABASE gestion_rh_db;
USE gestion_rh_db;

CREATE TABLE Employes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(100) NOT NULL,
  poste VARCHAR(100),
  salaire_base DECIMAL(10,2) NOT NULL
);

CREATE TABLE HistoriqueSalaires (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employe_id INT,
    ancien_salaire DECIMAL(10,2),
    nouveau_salaire DECIMAL(10,2),
    date_modification TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (employe_id) REFERENCES Employes(id)
);

CREATE TABLE Augmentations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employe_id INT,
    montant_augmentation DECIMAL(10,2),
    date_augmentation DATE,
    FOREIGN KEY (employe_id) REFERENCES Employes(id)
);
