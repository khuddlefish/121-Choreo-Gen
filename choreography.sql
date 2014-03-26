/*
chaCha.sql

CS 121
Name: Noelle Fa-Kaji
Email: nfakaji9953@scrippscollege.edu
*/

 -- Setting up the database
DROP DATABASE IF EXISTS choreographydb;

CREATE DATABASE choreographydb;

--not sure about this
GRANT ALL PRIVILEGES ON choreographydb.* to user@localhost IDENTIFIED BY 'allowme'; 

USE choreographydb;


-- Creating tables
CREATE TABLE Moves_ChaCha(	
	move_id VARCHAR(256) NOT NULL,
	move_name VARCHAR(256) NOT NULL,
	move_desc VARCHAR(256) NOT NULL,
	UNIQUE (move_name),
	PRIMARY KEY (move_id)
);

CREATE TABLE Move_Seq_ChaCha (
	preference INTEGER NOT NULL,
	level VARCHAR(256) NOT NULL,
	move_id VARCHAR(256) NOT NULL,
	next_move_id VARCHAR(256) NOT NULL,
	PRIMARY KEY (preference, level, move_id),
	FOREIGN KEY move_id REFERENCES Moves_ChaCha,
	FOREIGN KEY next_move_id REFERENCES Moves_ChaCha
);


-- Creating the Moves_ChaCha DataBase
-- Cha Cha Moves_ChaCha all have an id that starts with 01
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("aida", "Aida", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("alemana", "Alemana", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("basicClosed", "Closed Basic", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("basicOpen", "Open Basic", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("basicCross", "Cross Basic", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("chase", "Chase", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("cubanBreakL", "Cuban Break Left", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("cubanBreakR", "Cuban Break Right", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("cubanBreakSplitL", "Split Cuban Break Left", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("cubanBreakSplitR", "Split Cuban Break Right", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("curl", "Curl", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("fan", "Fan", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("followMyLeader", "Follow My Leader", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("footChanges1", "Foot Changes 1", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("footChanges2", "Foot Changes 2", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("footChanges3", "Foot Changes 3", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("footChanges4", "Foot Changes 4", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("handToHandLSP", "Hand To Hand LSP", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("handToHandRSP", "Hand To Hand RSP", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("hipTwistOpen", "Open Hip Twist", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("hipTwistClosed", "Closed Hip Twist", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("hipTwistAdvanced", "Advanced Hip Twist", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("hipTwistSpiral", "Spiral Hip Twist", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("hockeyStick", "Hockey Stick", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("naturalOpeningOut", "Natural Opening Out", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("naturalTop", "Natural Top", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("newYorkLSP", "New York LSP", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("newYorkRSP", "New York RSP", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("openingOutFromReverseTop", "Opening Out From Reverse Top", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("reverseTop", "Reverse Top", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("ropeSpinning", "Rope Spinning", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("shoulderToShoulderL", "Shoulder To Shoulder Left Side", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("shoulderToShoulderR", "Shoulder To Shoulder Right Side", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("sideStepLwithLF", "Side Step Left With Left Foot", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("sideStepLwithRF", "Side Step Left With Right Foot", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("sideStepRwithLF", "Side Step Right With Left Foot", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("sideStepRwithRF", "Side Step Right With Right Foot", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("spiral", "Spiral", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("spotOrSwitchTurnL", "Spot or Switch Turn Left", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("spotOrSwitchTurnR", "Spot or Switch Turn Right", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("sweetheart", "Sweetheart", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("thereAndBack", "There And Back", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("threeChasBack", "Three Cha Cha Chas Back", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("threeChasForward", "Three Cha Cha Chas Forward", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("timeStepL", "Time Step Left Foot", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("timeStepR", "Time Step Right Foot", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("turkishTowel", "Turkish Towel", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("underarmTurnL", "Underarm Turn Left", "");
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("underarmTurnR", "Underarm Turn Right", "");


--Cha Cha Bronze
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "alemana", "shoulderToShoulderL"); 
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "alemana", "basicClosed"); 
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "alemana", "basicOpen"); 
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "alemana", "thereAndBack"); 
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "alemana", "fan");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "alemana", "handToHandRSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "alemana", "sideStepLwithLF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "alemana", "sideStepRwithLF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "alemana", "timeStepL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "alemana", "newYorkLSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "alemana", "spotOrSwitchTurnR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "alemana", "underarmTurnL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (13, "Bronze", "alemana", "threeChasForward");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (14, "Bronze", "alemana", "naturalOpeningOut");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (15, "Bronze", "alemana", "hipTwistClosed");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "basicClosed", "timeStepR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "basicClosed", "basicOpen");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "basicClosed", "basicClosed");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "basicClosed", "newYorkLSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "basicClosed", "spotOrSwitchTurnR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "basicClosed", "underarmTurnL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "basicClosed", "shoulderToShoulderL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "basicClosed", "sideStepLwithLF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "basicClosed", "sideStepRwithLF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "basicClosed", "handToHandRSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "basicClosed", "thereAndBack");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "basicClosed", "timeStepL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (13, "Bronze", "basicClosed", "fan");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (14, "Bronze", "basicClosed", "threeChasBack");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (15, "Bronze", "basicClosed", "spotOrSwitchTurnL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (16, "Bronze", "basicClosed", "underarmTurnR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (17, "Bronze", "basicClosed", "handToHandLSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (18, "Bronze", "basicClosed", "sideStepLwithRF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (19, "Bronze", "basicClosed", "sideStepRwithRF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (20, "Bronze", "basicClosed", "naturalTop");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (21, "Bronze", "basicClosed", "threeChasForward");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "basicOpen", "fan");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "basicOpen", "basicClosed");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "basicOpen", "basicOpen");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "basicOpen", "threeChasBack");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "basicOpen", "naturalTop");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "basicOpen", "threeChasForward");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "basicOpen", "alemana");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "fan", "alemana");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "fan", "hockeyStick");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "handToHandLSP", "basicClosed");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "handToHandLSP", "basicOpen");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "handToHandLSP", "newYorkLSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "handToHandLSP", "spotOrSwitchTurnR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "handToHandLSP", "underarmTurnL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "handToHandLSP", "handToHandRSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "handToHandLSP", "sideStepLwithLF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "handToHandLSP", "sideStepRwithLF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "handToHandLSP", "thereAndBack");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "handToHandLSP", "timeStepL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "handToHandLSP", "fan");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "handToHandLSP", "threeChasForward");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "handToHandRSP", "basicClosed");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "handToHandRSP", "basicOpen");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "handToHandRSP", "newYorkRSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "handToHandRSP", "spotOrSwitchTurnL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "handToHandRSP", "underarmTurnR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "handToHandRSP", "handToHandLSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "handToHandRSP", "sideStepLwithRF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "handToHandRSP", "sideStepRwithRF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "handToHandRSP", "timeStepR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "handToHandRSP", "threeChasForward");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "handToHandRSP", "fan");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "handToHandRSP", "hipTwistClosed");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "hipTwistClosed", "alemana");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "hipTwistClosed", "hockeyStick");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "hipTwistClosed", "basicOpen");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "hipTwistClosed", "timeStepL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "hipTwistClosed", "newYorkLSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "hipTwistClosed", "spotOrSwitchTurnR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "hipTwistClosed", "underarmTurnL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "hipTwistClosed", "threeChasForward");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "hockeyStick", "basicOpen");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "hockeyStick", "shoulderToShoulderL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "hockeyStick", "timeStepL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "hockeyStick", "alemana");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "hockeyStick", "threeChasForward");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "hockeyStick", "newYorkLSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "hockeyStick", "spotOrSwitchTurnR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "hockeyStick", "underarmTurnL");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "naturalOpeningOut", "basicOpen");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "naturalOpeningOut", "basicClosed");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "naturalOpeningOut", "underarmTurnR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "naturalOpeningOut", "fan");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "naturalTop", "basicOpen");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "naturalTop", "basicClosed");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "naturalTop", "fan");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "naturalTop", "naturalOpeningOut");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "naturalTop", "hipTwistClosed");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "naturalTop", "hockeyStick");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "newYorkLSP", "newYorkRSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "newYorkLSP", "spotOrSwitchTurnL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "newYorkLSP", "basicClosed");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "newYorkLSP", "basicOpen");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "newYorkLSP", "underarmTurnR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "newYorkLSP", "handToHandLSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "newYorkLSP", "sideStepLwithRF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "newYorkLSP", "sideStepRwithRF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "newYorkLSP", "timeStepR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "newYorkLSP", "fan");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "newYorkLSP", "hipTwistClosed");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "newYorkLSP", "threeChasForward");

INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "newYorkRSP", "newYorkLSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "newYorkRSP", "spotOrSwitchTurnR");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "newYorkRSP", "underarmTurnL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "newYorkRSP", "basicClosed");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "newYorkRSP", "basicOpen");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "newYorkRSP", "handToHandRSP");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "newYorkRSP", "sideStepLwithLF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "newYorkRSP", "sideStepRwithLF");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "newYorkRSP", "thereAndBack");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "newYorkRSP", "timeStepL");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "newYorkRSP", "fan");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "newYorkRSP", "threeChasForward");


INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");
INSERT INTO Move_seq(preference, level, move_id, next_move_id) VALUES (00, "Bronze", "", "");

/*
-- SQL queries
SELECT * FROM Moves_ChaCha;


*/


