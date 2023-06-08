CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(10),
  PRIMARY KEY(id)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT NOT NULL AUTO_INCREMENT,
  text VARCHAR(140),
  userId INT,
  PRIMARY KEY(id),
  FOREIGN KEY(userId)
    REFERENCES users(id)
);

/* Create other tables and define schemas for them here! */

CREATE TABLE friends (
  id INT NOT NULL AUTO_INCREMENT,
  friend1 INT,
  friend2 INT,
  PRIMARY KEY(id),
  FOREIGN KEY (friend1)
    REFERENCES users(id),
  FOREIGN KEY (friend2)
    REFERENCES users(id)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

