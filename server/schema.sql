CREATE DATABASE chat;

USE chat;


CREATE TABLE messages (
  userid INT NOT NULL,
  text VARCHAR(120),
  roomid INT NOT NULL,
  FOREIGN KEY (userid), REFERENCES (users(userid)),
  FOREIGN KEY (roomid), REFERENCES (rooms(roomid))
);

CREATE TABLE users (
  userid INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(20),
  PRIMARY KEY (userid)
);

CREATE TABLE rooms (
  roomid INT NOT NULL AUTO_INCREMENT,
  roomname VARCHAR(20),
  PRIMARY KEY (roomid)
);



/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

