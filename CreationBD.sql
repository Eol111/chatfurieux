
CREATE DATABASE `bdserie` CHARACTER SET utf8 COLLATE utf8_general_ci;

USE bdserie;

CREATE TABLE serie (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nom VARCHAR(80) NOT NULL,
  vue BOOLEAN,
  dateVue date,
  remarques BLOB,
  PRIMARY KEY(id)
) 
ENGINE=INNODB;

CREATE USER 'publicSerie'@'localhost' IDENTIFIED BY 'mdpSerie';
GRANT SELECT, INSERT, UPDATE, DELETE ON bdserie.* to "publicSerie"@"localhost";
CREATE USER 'publicSerie'@'%' IDENTIFIED BY 'mdpSerie';
GRANT SELECT, INSERT, UPDATE, DELETE ON bdserie.* to "publicSerie"@"%";