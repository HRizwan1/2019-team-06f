CREATE DATABASE IF NOT EXISTS website;

USE website;

CREATE TABLE users(
  id INT(11) NOT NULL AUTO_INCREMENT, 
  username VARCHAR(100) NOT NULL, 
  user_type VARCHAR(100) NOT NULL,  
  email VARCHAR(100) NOT NULL, 
  password VARCHAR(100) NOT NULL, 
  PRIMARY KEY(id)
);
CREATE TABLE pictures(
  photo_id INT(11) NOT NULL AUTO_INCREMENT,
  photo mediumblob NOT NULL,
  photo_type VARCHAR(25) NOT NULL,
  id INT(11),
  text TEXT,
  PRIMARY KEY(photo_id),
  FOREIGN KEY (id) REFERENCES users(id)
);