DROP TABLE PLAYLISTS;
DROP TABLE GUESTS;
DROP TABLE ROOMS;

CREATE TABLE rooms (
id SERIAL8 PRIMARY KEY,
name INT,
room_fee INT,
room_capacity INT
);

CREATE TABLE playlists (
id SERIAL8 PRIMARY KEY,
title VARCHAR(255),
room_id INT8 REFERENCES rooms(id)
);

CREATE TABLE guests (
id SERIAL8 PRIMARY KEY,
name VARCHAR,
wallet INT,
room_id INT8 REFERENCES rooms(id)
);

-- #INSERT ROOM DATA

INSERT INTO rooms (name, room_fee, room_capacity) VALUES (1, 100, 30);
INSERT INTO rooms (name, room_fee, room_capacity) VALUES (2, 75, 20);
INSERT INTO rooms (name, room_fee, room_capacity) VALUES (3, 50, 15);
INSERT INTO rooms (name, room_fee, room_capacity) VALUES (4, 30, 10);
INSERT INTO rooms (name, room_fee, room_capacity) VALUES (5, 30, 10);

SELECT * FROM rooms ORDER BY name;

-- #INSERT PLAYLIST DATA

INSERT INTO playlists (title, room_id) VALUES ('Big Hits of the 60s', 1);
INSERT INTO playlists (title, room_id) VALUES ('Big Hits of the 70s', 2);
INSERT INTO playlists (title, room_id) VALUES ('Big Hits of the 80s', 3);
INSERT INTO playlists (title, room_id) VALUES ('Big Hits of the 90s', 4);
INSERT INTO playlists (title, room_id) VALUES ('Dance Mix', 5);

SELECT * FROM playlists ORDER BY title;

-- #INSERT GUEST DATA

INSERT INTO guests (name, wallet, room_id) VALUES ('Pawel', 50, 1);
INSERT INTO guests (name, wallet, room_id) VALUES ('Keith', 100, 1);
INSERT INTO guests (name, wallet, room_id) VALUES ('Sandy', 1000, 1);
INSERT INTO guests (name, wallet, room_id) VALUES ('Matthew', 10, 1);
INSERT INTO guests (name, wallet, room_id) VALUES ('Lewis', 20, 1);

SELECT * FROM guests ORDER BY name;

-- # CHANGE DATA

UPDATE playlists
SET title = 'Dance Mix Volume 2'
WHERE room_id = 4;

SELECT * FROM playlists ORDER BY room_id;

-- #Print only selected columns from your tables

SELECT name FROM guests;

-- #Print only selected rows from your tables

SELECT * FROM playlists WHERE id =5; 
