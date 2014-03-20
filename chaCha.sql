/*
chaCha.sql

CS 121
Name: Noelle Fa-Kaji
Email: nfakaji9953@scrippscollege.edu
*/

 -- Setting up the database
DROP DATABASE IF EXISTS chadb;

CREATE DATABASE chadb;

--not sure about this
GRANT ALL PRIVILEGES ON chadb.* to Noelle@localhost IDENTIFIED BY '777'; 

USE chadb;


-- Creating tables
CREATE TABLE Moves (	
	move_id INTEGER NOT NULL,
	move_name VARCHAR(256) NOT NULL,
	move_desc VARCHAR(256) NOT NULL,
	PRIMARY KEY (move_id)
);

CREATE TABLE Move_Seq (
	preference INTEGER NOT NULL,
	level VARCHAR(256) NOT NULL,
	move_id INTEGER NOT NULL,
	move_seq_id INTEGER NOT NULL,
	PRIMARY KEY (preference, level, move_id),
	FOREIGN KEY move_id REFERENCES Moves,
	FOREIGN KEY move_seq_id REFERENCES Moves
);


-- Adding data to the tables
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01001, "Aida", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01002, "Alemana", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01003, "Closed Basic", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01004, "Open Basic", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01005, "Cross Basic", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01006, "Chase", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01007, "Cuban Break Left", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01008, "Cuban Break Right", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01009, "Split Cuban Break Left", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01010, "Split Cuban Break Right", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01011, "Curl", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01012, "Fan", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01013, "Follow My Leader", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01014, "Foot Changes 1", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01015, "Foot Changes 2", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01016, "Foot Changes 3", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01017, "Foot Changes 4", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01018, "Hand To Hand LSP", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01019, "Hand To Hand RSP", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01020, "Open Hip Twist", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01021, "Closed Hip Twist", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01022, "Advanced Hip Twist", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01023, "Spiral Hip Twist", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01024, "Hockey Stick", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01025, "Natural Opening Out", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01026, "Natural Top", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01027, "New York LSP", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01028, "New York RSP", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01029, "Opening Out From Reverse Top", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01030, "Reverse Top", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01031, "Rope Spinning", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01032, "Shoulder To Shoulder Left Side", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01033, "Shoulder To Shoulder Right Side", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01034, "Side Step Left With Left Foot", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01035, "Side Step Left With Right Foot", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01036, "Side Step Right With Left Foot", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01037, "Side Step Right With Right Foot", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01038, "Spiral", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01039, "Spot or Switch Turn Left", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01040, "Spot or Switch Turn Right", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01041, "Sweetheart", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01042, "There And Back", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01043, "Three Cha Cha Chas Back", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01044, "Three Cha Cha Chas Forward", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01045, "Time Step Left Foot", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01046, "Time Step Right Foot", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01047, "Turkish Towel", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01048, "Underarm Turn Left", "");
INSERT INTO Moves(move_id, move_name, move_desc) VALUES (01049, "Underarm Turn Right", "");



/*
-- SQL queries
SELECT * FROM Moves;


*/


