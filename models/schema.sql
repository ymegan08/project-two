DROP DATABASE IF EXISTS sql3331101;
CREATE DATABASE sql3331101;
USE sql3331101;
CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE userScore (
  id int NOT NULL AUTO_INCREMENT,
  animal_breed varchar(255) NOT NULL,
  animal_name varchar(255) NOT NULL,
  price int NOT NULL,
  buyer_id int NOT NULL,
  PRIMARY KEY(id) FOREIGN KEY(buyer_id) REFERENCES buyers(id)
);