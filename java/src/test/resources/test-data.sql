BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user1','user1','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user2','user2','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user3','user3','ROLE_USER');

DROP TABLE IF EXISTS character;
CREATE TABLE character(
id serial,
name varchar(50) not null,
race varchar(50) not null,
description varchar(10000) not null,
char_class varchar(50) not null,


constraint pk_character primary key (id)

);

INSERT INTO character (name, race, description, char_class) VALUES ('b', 'c', 'd', 'e');

COMMIT TRANSACTION;


