/*
choreography.sql

CS 121
Name: Noelle Fa-Kaji
Email: nfakaji9953@scrippscollege.edu

To run:
1. shell> sudo /usr/local/mysql/support-files/mysql.server start
2. shell> sudo /usr/local/mysql/bin/mysql
3. mysql> source /Users/Noelle/121-Choreo-Gen/choreography.sql;
4. mysql> exit
5. shell> sudo /usr/local/mysql/support-files/mysql.server stop


*/

 -- Setting up the database
DROP DATABASE IF EXISTS choreographydb;

CREATE DATABASE choreographydb;

GRANT ALL PRIVILEGES ON choreographydb.* to usr@localhost IDENTIFIED BY 'allowme'; 

USE choreographydb;


-- Creating tables
CREATE TABLE Moves_ChaCha(	
	move_id VARCHAR(256) NOT NULL,
	move_name VARCHAR(256) NOT NULL,
	move_desc VARCHAR(256) NOT NULL,
	UNIQUE (move_name),
	PRIMARY KEY (move_id)
);

CREATE TABLE Move_Seq_ChaCha(
	preference INTEGER NOT NULL,
	level VARCHAR(256) NOT NULL,
	move_id VARCHAR(256) NOT NULL,
	next_move_id VARCHAR(256) NOT NULL,
	PRIMARY KEY (preference, level, move_id),
	FOREIGN KEY (move_id) REFERENCES Moves_ChaCha(move_id),
	FOREIGN KEY (next_move_id) REFERENCES Moves_ChaCha(move_id)
);


-- Creating the Moves_ChaCha DataBase
-- Cha Cha Moves_ChaCha all have an id that starts with 01
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("aida", "Aida", "" );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("alemana", "Alemana", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("basicClosed", "Closed Basic", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("basicOpen", "Open Basic", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("basicCross", "Cross Basic", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("chase", "Chase", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("cubanBreakL", "Cuban Break Left", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("cubanBreakR", "Cuban Break Right", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("cubanBreakSplitL", "Split Cuban Break Left", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("cubanBreakSplitR", "Split Cuban Break Right", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("curl", "Curl", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("fan", "Fan", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("followMyLeader", "Follow My Leader", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("footChanges1", "Foot Changes 1", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("footChanges2", "Foot Changes 2", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("footChanges3", "Foot Changes 3", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("footChanges4", "Foot Changes 4", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("handToHandLSP", "Hand To Hand LSP", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("handToHandRSP", "Hand To Hand RSP", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("hipTwistOpen", "Open Hip Twist", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("hipTwistClosed", "Closed Hip Twist", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("hipTwistAdvanced", "Advanced Hip Twist", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("hipTwistSpiral", "Spiral Hip Twist", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("hockeyStick", "Hockey Stick", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("naturalOpeningOut", "Natural Opening Out", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("naturalTop", "Natural Top", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("newYorkLSP", "New York LSP", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("newYorkRSP", "New York RSP", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("openingOutFromReverseTop", "Opening Out From Reverse Top", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("reverseTop", "Reverse Top", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("ropeSpinning", "Rope Spinning", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("shoulderToShoulderL", "Shoulder To Shoulder Left Side", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("shoulderToShoulderR", "Shoulder To Shoulder Right Side", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("sideStepLwithLF", "Side Step Left With Left Foot", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("sideStepLwithRF", "Side Step Left With Right Foot", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("sideStepRwithLF", "Side Step Right With Left Foot", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("sideStepRwithRF", "Side Step Right With Right Foot", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("spiral", "Spiral", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("spotOrSwitchTurnL", "Spot or Switch Turn Left", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("spotOrSwitchTurnR", "Spot or Switch Turn Right", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("sweetheart", "Sweetheart", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("thereAndBack", "There And Back", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("threeChasBack", "Three Cha Cha Chas Back", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("threeChasForward", "Three Cha Cha Chas Forward", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("timeStepL", "Time Step Left Foot", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("timeStepR", "Time Step Right Foot", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("turkishTowel", "Turkish Towel", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("underarmTurnL", "Underarm Turn Left", ""  );
INSERT INTO Moves_ChaCha(move_id, move_name, move_desc) VALUES ("underarmTurnR", "Underarm Turn Right", ""  );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "alemana", "shoulderToShoulderL"); 
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "alemana", "basicClosed"); 
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "alemana", "basicOpen"); 
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "alemana", "thereAndBack"); 
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "alemana", "fan");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "alemana", "handToHandRSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "alemana", "sideStepLwithLF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "alemana", "sideStepRwithLF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "alemana", "timeStepL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "alemana", "newYorkLSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "alemana", "spotOrSwitchTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "alemana", "underarmTurnL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Bronze", "alemana", "threeChasForward");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Bronze", "alemana", "naturalOpeningOut");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Bronze", "alemana", "hipTwistClosed");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "basicClosed", "timeStepR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "basicClosed", "basicOpen");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "basicClosed", "basicClosed");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "basicClosed", "newYorkLSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "basicClosed", "spotOrSwitchTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "basicClosed", "underarmTurnL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "basicClosed", "shoulderToShoulderL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "basicClosed", "sideStepLwithLF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "basicClosed", "sideStepRwithLF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "basicClosed", "handToHandRSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "basicClosed", "thereAndBack");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "basicClosed", "timeStepL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Bronze", "basicClosed", "fan");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Bronze", "basicClosed", "threeChasBack");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Bronze", "basicClosed", "spotOrSwitchTurnL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Bronze", "basicClosed", "underarmTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Bronze", "basicClosed", "handToHandLSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Bronze", "basicClosed", "sideStepLwithRF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Bronze", "basicClosed", "sideStepRwithRF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Bronze", "basicClosed", "naturalTop");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (21, "Bronze", "basicClosed", "threeChasForward");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "basicOpen", "fan");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "basicOpen", "basicClosed");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "basicOpen", "basicOpen");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "basicOpen", "threeChasBack");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "basicOpen", "naturalTop");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "basicOpen", "threeChasForward");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "basicOpen", "alemana");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "fan", "alemana");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "fan", "hockeyStick");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "handToHandLSP", "basicClosed");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "handToHandLSP", "basicOpen");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "handToHandLSP", "newYorkLSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "handToHandLSP", "spotOrSwitchTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "handToHandLSP", "underarmTurnL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "handToHandLSP", "handToHandRSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "handToHandLSP", "sideStepLwithLF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "handToHandLSP", "sideStepRwithLF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "handToHandLSP", "thereAndBack");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "handToHandLSP", "timeStepL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "handToHandLSP", "fan");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "handToHandLSP", "threeChasForward");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "handToHandRSP", "basicClosed");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "handToHandRSP", "basicOpen");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "handToHandRSP", "newYorkRSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "handToHandRSP", "spotOrSwitchTurnL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "handToHandRSP", "underarmTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "handToHandRSP", "handToHandLSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "handToHandRSP", "sideStepLwithRF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "handToHandRSP", "sideStepRwithRF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "handToHandRSP", "timeStepR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "handToHandRSP", "threeChasForward");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "handToHandRSP", "fan");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "handToHandRSP", "hipTwistClosed");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "hipTwistClosed", "alemana");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "hipTwistClosed", "hockeyStick");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "hipTwistClosed", "basicOpen");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "hipTwistClosed", "timeStepL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "hipTwistClosed", "newYorkLSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "hipTwistClosed", "spotOrSwitchTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "hipTwistClosed", "underarmTurnL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "hipTwistClosed", "threeChasForward");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "hockeyStick", "basicOpen");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "hockeyStick", "shoulderToShoulderL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "hockeyStick", "timeStepL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "hockeyStick", "alemana");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "hockeyStick", "threeChasForward");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "hockeyStick", "newYorkLSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "hockeyStick", "spotOrSwitchTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "hockeyStick", "underarmTurnL");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "naturalOpeningOut", "basicOpen");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "naturalOpeningOut", "basicClosed");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "naturalOpeningOut", "underarmTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "naturalOpeningOut", "fan");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "naturalTop", "basicOpen");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "naturalTop", "basicClosed");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "naturalTop", "fan");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "naturalTop", "naturalOpeningOut");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "naturalTop", "hipTwistClosed");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "naturalTop", "hockeyStick");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "newYorkLSP", "newYorkRSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "newYorkLSP", "spotOrSwitchTurnL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "newYorkLSP", "basicClosed");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "newYorkLSP", "basicOpen");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "newYorkLSP", "underarmTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "newYorkLSP", "handToHandLSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "newYorkLSP", "sideStepLwithRF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "newYorkLSP", "sideStepRwithRF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "newYorkLSP", "timeStepR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "newYorkLSP", "fan");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "newYorkLSP", "hipTwistClosed");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "newYorkLSP", "threeChasForward");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "newYorkRSP", "newYorkLSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "newYorkRSP", "spotOrSwitchTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "newYorkRSP", "underarmTurnL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "newYorkRSP", "basicClosed");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "newYorkRSP", "basicOpen");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "newYorkRSP", "handToHandRSP");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "newYorkRSP", "sideStepLwithLF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "newYorkRSP", "sideStepRwithLF");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "newYorkRSP", "thereAndBack");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "newYorkRSP", "timeStepL");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "newYorkRSP", "fan");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "newYorkRSP", "threeChasForward");

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "shoulderToShoulderL", "shoulderToShoulderR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "shoulderToShoulderL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "shoulderToShoulderL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "shoulderToShoulderL", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "shoulderToShoulderL", "underarmTurnR");
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "shoulderToShoulderL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "shoulderToShoulderL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "shoulderToShoulderL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "shoulderToShoulderL", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "shoulderToShoulderL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "shoulderToShoulderL", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "shoulderToShoulderL", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Bronze", "shoulderToShoulderL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Bronze", "shoulderToShoulderL", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "shoulderToShoulderR", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "shoulderToShoulderR", "basicClosed"   );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "shoulderToShoulderR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "shoulderToShoulderR", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "shoulderToShoulderR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "shoulderToShoulderR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "shoulderToShoulderR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "shoulderToShoulderR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "shoulderToShoulderR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "shoulderToShoulderR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "shoulderToShoulderR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "shoulderToShoulderR", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Bronze", "shoulderToShoulderR", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "sideStepLwithLF", "basicClosed"   );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "sideStepLwithLF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "sideStepLwithLF", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "sideStepLwithLF", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "sideStepLwithLF", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "sideStepLwithLF", "shoulderToShoulderR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "sideStepLwithLF", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "sideStepLwithLF", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "sideStepLwithLF", "timeStepR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "sideStepLwithRF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "sideStepLwithRF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "sideStepLwithRF", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "sideStepLwithRF", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "sideStepLwithRF", "fan" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "sideStepRwithLF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "sideStepRwithLF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "sideStepRwithLF", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "sideStepRwithLF", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "sideStepRwithLF", "fan" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "sideStepRwithRF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "sideStepRwithRF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "sideStepRwithRF", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "sideStepRwithRF", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "sideStepRwithRF", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "sideStepRwithRF", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "sideStepRwithRF", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "sideStepRwithRF", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "sideStepRwithRF", "fan" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "spotOrSwitchTurnL", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "spotOrSwitchTurnL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "spotOrSwitchTurnL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "spotOrSwitchTurnL", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "spotOrSwitchTurnL", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "spotOrSwitchTurnL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "spotOrSwitchTurnL", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "spotOrSwitchTurnL", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "spotOrSwitchTurnL", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "spotOrSwitchTurnL", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "spotOrSwitchTurnL", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "spotOrSwitchTurnL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Bronze", "spotOrSwitchTurnL", "alemana" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "spotOrSwitchTurnR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "spotOrSwitchTurnR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "spotOrSwitchTurnR", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "spotOrSwitchTurnR", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "spotOrSwitchTurnR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "spotOrSwitchTurnR", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "spotOrSwitchTurnR", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "spotOrSwitchTurnR", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "spotOrSwitchTurnR", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "spotOrSwitchTurnR", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "spotOrSwitchTurnR", "fan" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "thereAndBack", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "thereAndBack", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "thereAndBack", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "thereAndBack", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "thereAndBack", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "thereAndBack", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "thereAndBack", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "thereAndBack", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "thereAndBack", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "thereAndBack", "fan" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "threeChasBack", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "threeChasBack", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "threeChasBack", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "threeChasBack", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "threeChasBack", "naturalTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "threeChasForward", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "threeChasForward", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "threeChasForward", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "threeChasForward", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "threeChasForward", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "threeChasForward", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "threeChasForward", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "threeChasForward", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "threeChasForward", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "threeChasForward", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "threeChasForward", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "threeChasForward", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Bronze", "threeChasForward", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Bronze", "threeChasForward", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Bronze", "threeChasForward", "spotOrSwitchTurnR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "timeStepL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "timeStepL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "timeStepL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "timeStepL", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "timeStepL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "timeStepL", "shoulderToShoulderR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "timeStepL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "timeStepL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "timeStepL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "timeStepL", "timeStepR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "timeStepR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "timeStepR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "timeStepR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "timeStepR", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "timeStepR", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "timeStepR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "timeStepR", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "timeStepR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "timeStepR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "timeStepR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "timeStepR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "timeStepR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Bronze", "timeStepR", "alemana" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "underarmTurnL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "underarmTurnL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "underarmTurnL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "underarmTurnL", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "underarmTurnL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "underarmTurnL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "underarmTurnL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "underarmTurnL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "underarmTurnL", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "underarmTurnL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "underarmTurnL", "naturalTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Bronze", "underarmTurnR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Bronze", "underarmTurnR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Bronze", "underarmTurnR", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Bronze", "underarmTurnR", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Bronze", "underarmTurnR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Bronze", "underarmTurnR", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Bronze", "underarmTurnR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Bronze", "underarmTurnR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Bronze", "underarmTurnR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Bronze", "underarmTurnR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Bronze", "underarmTurnR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Bronze", "underarmTurnR", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Bronze", "underarmTurnR", "fan" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "aida", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "aida", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "aida", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "aida", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "aida", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "aida", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "aida", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "aida", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "aida", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "aida", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "aida", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "aida", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "aida", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "aida", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "aida", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "aida", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Silver", "aida", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Silver", "aida", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Silver", "aida", "chase" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "alemana", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "alemana", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "alemana", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "alemana", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "alemana", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "alemana", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "alemana", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "alemana", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "alemana", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "alemana", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "alemana", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "alemana", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "alemana", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "alemana", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "alemana", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "alemana", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Silver", "alemana", "naturalOpeningOut" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Silver", "alemana", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Silver", "alemana", "spiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Silver", "alemana", "ropeSpinning" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "basicClosed", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "basicClosed", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "basicClosed", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "basicClosed", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "basicClosed", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "basicClosed", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "basicClosed", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "basicClosed", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "basicClosed", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "basicClosed", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "basicClosed", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "basicClosed", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "basicClosed", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "basicClosed", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "basicClosed", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "basicClosed", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Silver", "basicClosed", "threeChasBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Silver", "basicClosed", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Silver", "basicClosed", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Silver", "basicClosed", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (21, "Silver", "basicClosed", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (22, "Silver", "basicClosed", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (23, "Silver", "basicClosed", "naturalTop" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (24, "Silver", "basicClosed", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (25, "Silver", "basicClosed", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "basicOpen", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "basicOpen", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "basicOpen", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "basicOpen", "threeChasBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "basicOpen", "naturalTop" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "basicOpen", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "basicOpen", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "basicOpen", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "basicOpen", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "basicOpen", "chase" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "basicCross", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "basicCross", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "basicCross", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "basicCross", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "basicCross", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "basicCross", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "basicCross", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "basicCross", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "basicCross", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "basicCross", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "basicCross", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "basicCross", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "basicCross", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "basicCross", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "basicCross", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "basicCross", "spiral" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "chase", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "chase", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "chase", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "chase", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "chase", "curl" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "cubanBreakL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "cubanBreakL", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "cubanBreakL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "cubanBreakL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "cubanBreakL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "cubanBreakL", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "cubanBreakL", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "cubanBreakL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "cubanBreakL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "cubanBreakL", "cubanBreakR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "cubanBreakR", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "cubanBreakR", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "cubanBreakR", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "cubanBreakR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "cubanBreakR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "cubanBreakR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "cubanBreakR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "cubanBreakR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "cubanBreakR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "cubanBreakR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "cubanBreakR", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "cubanBreakR", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "cubanBreakR", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "cubanBreakR", "newYorkLSP" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "cubanBreakSplitL", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "cubanBreakSplitL", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "cubanBreakSplitL", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "cubanBreakSplitL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "cubanBreakSplitL", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "cubanBreakSplitL", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "cubanBreakSplitL", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "cubanBreakSplitL", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "cubanBreakSplitL", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "cubanBreakSplitL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "cubanBreakSplitL", "cubanBreakSplitR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "cubanBreakSplitL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "cubanBreakSplitL", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "cubanBreakSplitL", "newYorkRSP" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "cubanBreakSplitR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "cubanBreakSplitR", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "cubanBreakSplitR", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "cubanBreakSplitR", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "cubanBreakSplitR", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "cubanBreakSplitR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "cubanBreakSplitR", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "cubanBreakSplitR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "cubanBreakSplitR", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "cubanBreakSplitR", "newYorkLSP" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "curl", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "curl", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "curl", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "curl", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "curl", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "curl", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "curl", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "curl", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "curl", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "curl", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "curl", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "curl", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "curl", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "curl", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "fan", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "fan", "hockeyStick" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "handToHandLSP", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "handToHandLSP", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "handToHandLSP", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "handToHandLSP", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "handToHandLSP", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "handToHandLSP", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "handToHandLSP", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "handToHandLSP", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "handToHandLSP", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "handToHandLSP", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "handToHandLSP", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "handToHandLSP", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "handToHandLSP", "ropeSpinning" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "handToHandLSP", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "handToHandLSP", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "handToHandLSP", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "handToHandRSP", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "handToHandRSP", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "handToHandRSP", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "handToHandRSP", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "handToHandRSP", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "handToHandRSP", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "handToHandRSP", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "handToHandRSP", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "handToHandRSP", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "handToHandRSP", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "handToHandRSP", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "handToHandRSP", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "handToHandRSP", "aida" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "handToHandRSP", "spiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "handToHandRSP", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "handToHandRSP", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "hipTwistClosed", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "hipTwistClosed", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "hipTwistClosed", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "hipTwistClosed", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "hipTwistClosed", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "hipTwistClosed", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "hipTwistClosed", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "hipTwistClosed", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "hipTwistClosed", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "hipTwistClosed", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "hipTwistClosed", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "hipTwistClosed", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "hipTwistClosed", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "hipTwistClosed", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "hipTwistOpen", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "hipTwistOpen", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "hipTwistOpen", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "hipTwistOpen", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "hipTwistOpen", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "hipTwistOpen", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "hipTwistOpen", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "hipTwistOpen", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "hipTwistOpen", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "hipTwistOpen", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "hipTwistOpen", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "hipTwistOpen", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "hipTwistOpen", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "hipTwistOpen", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "hockeyStick", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "hockeyStick", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "hockeyStick", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "hockeyStick", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "hockeyStick", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "hockeyStick", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "hockeyStick", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "hockeyStick", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "hockeyStick", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "hockeyStick", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "hockeyStick", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "hockeyStick", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "hockeyStick", "cubanBreakSplitL" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "naturalOpeningOut", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "naturalOpeningOut", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "naturalOpeningOut", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "naturalOpeningOut", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "naturalOpeningOut", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "naturalTop", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "naturalTop", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "naturalTop", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "naturalTop", "naturalOpeningOut" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "naturalTop", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "naturalTop", "spiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "naturalTop", "ropeSpinning" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "naturalTop", "hockeyStick" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "newYorkLSP", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "newYorkLSP", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "newYorkLSP", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "newYorkLSP", "cubanBreakSplitR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "newYorkLSP", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "newYorkLSP", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "newYorkLSP", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "newYorkLSP", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "newYorkLSP", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "newYorkLSP", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "newYorkLSP", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "newYorkLSP", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "newYorkLSP", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "newYorkLSP", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "newYorkRSP", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "newYorkRSP", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "newYorkRSP", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "newYorkRSP", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "newYorkRSP", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "newYorkRSP", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "newYorkRSP", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "newYorkRSP", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "newYorkRSP", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "newYorkRSP", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "newYorkRSP", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "newYorkRSP", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "newYorkRSP", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "newYorkRSP", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "newYorkRSP", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "openingOutFromReverseTop", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "openingOutFromReverseTop", "hockeyStick" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "reverseTop", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "reverseTop", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "reverseTop", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "reverseTop", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "reverseTop", "openingOutFromReverseTop" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "reverseTop", "aida" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "reverseTop", "spiral" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "ropeSpinning", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "ropeSpinning", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "ropeSpinning", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "ropeSpinning", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "ropeSpinning", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "ropeSpinning", "sideStepLwithLF"  );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "ropeSpinning", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "ropeSpinning", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "ropeSpinning", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "ropeSpinning", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "ropeSpinning", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "ropeSpinning", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "ropeSpinning", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "ropeSpinning", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "ropeSpinning", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "ropeSpinning", "naturalOpeningOut" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Silver", "ropeSpinning", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Silver", "ropeSpinning", "spiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Silver", "ropeSpinning", "ropeSpinning" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "spiral", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "spiral", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "spiral", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "spiral", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "spiral", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "spiral", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "spiral", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "spiral", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "spiral", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "spiral", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "spiral", "spotOrSwitchTurnR"  );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "spiral", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "spiral", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "spiral", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "shoulderToShoulderL", "shoulderToShoulderR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "shoulderToShoulderL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "shoulderToShoulderL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "shoulderToShoulderL", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "shoulderToShoulderL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "shoulderToShoulderL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "shoulderToShoulderL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "shoulderToShoulderL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "shoulderToShoulderL", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "shoulderToShoulderL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "shoulderToShoulderL", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "shoulderToShoulderL", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "shoulderToShoulderL", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "shoulderToShoulderL", "cubanBreakSplitR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "shoulderToShoulderL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "shoulderToShoulderL", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "shoulderToShoulderR", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "shoulderToShoulderR", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "shoulderToShoulderR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "shoulderToShoulderR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "shoulderToShoulderR", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "shoulderToShoulderR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "shoulderToShoulderR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "shoulderToShoulderR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "shoulderToShoulderR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "shoulderToShoulderR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "shoulderToShoulderR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "shoulderToShoulderR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "shoulderToShoulderR", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "shoulderToShoulderR", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "shoulderToShoulderR", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "shoulderToShoulderR", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "sideStepLwithLF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "sideStepLwithLF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "sideStepLwithLF", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "sideStepLwithLF", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "sideStepLwithLF", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "sideStepLwithLF", "shoulderToShoulderR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "sideStepLwithLF", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "sideStepLwithLF", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "sideStepLwithLF", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "sideStepLwithLF", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "sideStepLwithLF", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "sideStepLwithRF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "sideStepLwithRF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "sideStepLwithRF", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "sideStepLwithRF", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "sideStepLwithRF", "fan" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "sideStepRwithLF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "sideStepRwithLF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "sideStepRwithLF", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "sideStepRwithLF", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "sideStepRwithLF", "fan" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "sideStepRwithRF", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "sideStepRwithRF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "sideStepRwithRF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "sideStepRwithRF", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "sideStepRwithRF", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "sideStepRwithRF", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "sideStepRwithRF", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "sideStepRwithRF", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "sideStepRwithRF", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "sideStepRwithRF", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "sideStepRwithRF", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "sideStepRwithRF", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "spotOrSwitchTurnL", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "spotOrSwitchTurnL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "spotOrSwitchTurnL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "spotOrSwitchTurnL", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "spotOrSwitchTurnL", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "spotOrSwitchTurnL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "spotOrSwitchTurnL", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "spotOrSwitchTurnL", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "spotOrSwitchTurnL", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "spotOrSwitchTurnL", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "spotOrSwitchTurnL", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "spotOrSwitchTurnL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "spotOrSwitchTurnL", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "spotOrSwitchTurnL", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "spotOrSwitchTurnL", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "spotOrSwitchTurnL", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Silver", "spotOrSwitchTurnL", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Silver", "spotOrSwitchTurnL", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Silver", "spotOrSwitchTurnL", "chase" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "spotOrSwitchTurnR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "spotOrSwitchTurnR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "spotOrSwitchTurnR", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "spotOrSwitchTurnR", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "spotOrSwitchTurnR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "spotOrSwitchTurnR", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "spotOrSwitchTurnR", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "spotOrSwitchTurnR", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "spotOrSwitchTurnR", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "spotOrSwitchTurnR", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "spotOrSwitchTurnR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "spotOrSwitchTurnR", "aida" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "spotOrSwitchTurnR", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "spotOrSwitchTurnR", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "thereAndBack", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "thereAndBack", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "thereAndBack", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "thereAndBack", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "thereAndBack", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "thereAndBack", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "thereAndBack", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "thereAndBack", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "thereAndBack", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "thereAndBack", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "thereAndBack", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "thereAndBack", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "threeChasBack", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "threeChasBack", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "threeChasBack", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "threeChasBack", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "threeChasBack", "naturalTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "threeChasForward", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "threeChasForward", "aida" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "threeChasForward", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "threeChasForward", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "threeChasForward", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "threeChasForward", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "threeChasForward", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "threeChasForward", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "threeChasForward", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "threeChasForward", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "threeChasForward", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "threeChasForward", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "threeChasForward", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "threeChasForward", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "threeChasForward", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "threeChasForward", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Silver", "threeChasForward", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Silver", "threeChasForward", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Silver", "threeChasForward", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Silver", "threeChasForward", "spotOrSwitchTurnR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "timeStepL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "timeStepL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "timeStepL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "timeStepL", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "timeStepL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "timeStepL", "shoulderToShoulderR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "timeStepL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "timeStepL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "timeStepL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "timeStepL", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "timeStepL", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "timeStepL", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "timeStepR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "timeStepR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "timeStepR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "timeStepR", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "timeStepR", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "timeStepR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "timeStepR", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "timeStepR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "timeStepR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "timeStepR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "timeStepR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "timeStepR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "timeStepR", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "timeStepR", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "timeStepR", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "timeStepR", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Silver", "timeStepR", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Silver", "timeStepR", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Silver", "timeStepR", "chase" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "underarmTurnL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "underarmTurnL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "underarmTurnL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "underarmTurnL", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "underarmTurnL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "underarmTurnL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "underarmTurnL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "underarmTurnL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "underarmTurnL", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "underarmTurnL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "underarmTurnL", "naturalTop" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "underarmTurnL", "aida" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "underarmTurnL", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "underarmTurnL", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Silver", "underarmTurnR", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Silver", "underarmTurnR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Silver", "underarmTurnR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Silver", "underarmTurnR", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Silver", "underarmTurnR", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Silver", "underarmTurnR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Silver", "underarmTurnR", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Silver", "underarmTurnR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Silver", "underarmTurnR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Silver", "underarmTurnR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Silver", "underarmTurnR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Silver", "underarmTurnR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Silver", "underarmTurnR", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Silver", "underarmTurnR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Silver", "underarmTurnR", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Silver", "underarmTurnR", "cubanBreakSplitL" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "aida", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "aida", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "aida", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "aida", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "aida", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "aida", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "aida", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "aida", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "aida", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "aida", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "aida", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "aida", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "aida", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "aida", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "aida", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "aida", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "aida", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Gold", "aida", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Gold", "aida", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Gold", "aida", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (21, "Gold", "aida", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (22, "Gold", "aida", "followMyLeader" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "alemana", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "alemana", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "alemana", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "alemana", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "alemana", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "alemana", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "alemana", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "alemana", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "alemana", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "alemana", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "alemana", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "alemana", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "alemana", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "alemana", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "alemana", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "alemana", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "alemana", "naturalOpeningOut" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Gold", "alemana", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Gold", "alemana", "spiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Gold", "alemana", "ropeSpinning" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (21, "Gold", "alemana", "hipTwistAdvanced" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (22, "Gold", "alemana", "hipTwistSpiral" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "basicClosed", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "basicClosed", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "basicClosed", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "basicClosed", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "basicClosed", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "basicClosed", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "basicClosed", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "basicClosed", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "basicClosed", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "basicClosed", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "basicClosed", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "basicClosed", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "basicClosed", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "basicClosed", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "basicClosed", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "basicClosed", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "basicClosed", "threeChasBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Gold", "basicClosed", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Gold", "basicClosed", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Gold", "basicClosed", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (21, "Gold", "basicClosed", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (22, "Gold", "basicClosed", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (23, "Gold", "basicClosed", "naturalTop" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (24, "Gold", "basicClosed", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (25, "Gold", "basicClosed", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "basicOpen", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "basicOpen", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "basicOpen", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "basicOpen", "threeChasBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "basicOpen", "naturalTop" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "basicOpen", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "basicOpen", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "basicOpen", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "basicOpen", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "basicOpen", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "basicOpen", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "basicOpen", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "basicOpen", "followMyLeader" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "basicOpen", "footChanges1" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "basicOpen", "footChanges3" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "basicCross", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "basicCross", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "basicCross", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "basicCross", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "basicCross", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "basicCross", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "basicCross", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "basicCross", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "basicCross", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "basicCross", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "basicCross", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "basicCross", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "basicCross", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "basicCross", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "basicCross", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "basicCross", "spiral" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "chase", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "chase", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "chase", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "chase", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "chase", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "chase", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "chase", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "chase", "followMyLeader" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "cubanBreakL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "cubanBreakL", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "cubanBreakL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "cubanBreakL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "cubanBreakL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "cubanBreakL", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "cubanBreakL", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "cubanBreakL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "cubanBreakL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "cubanBreakL", "cubanBreakR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "cubanBreakR", "followMyLeader" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "cubanBreakR", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "cubanBreakR", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "cubanBreakR", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "cubanBreakR", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "cubanBreakR", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "cubanBreakR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "cubanBreakR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "cubanBreakR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "cubanBreakR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "cubanBreakR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "cubanBreakR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "cubanBreakR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "cubanBreakR", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "cubanBreakR", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "cubanBreakR", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "cubanBreakR", "newYorkLSP" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "cubanBreakSplitL", "followMyLeader" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "cubanBreakSplitL", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "cubanBreakSplitL", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "cubanBreakSplitL", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "cubanBreakSplitL", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "cubanBreakSplitL", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "cubanBreakSplitL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "cubanBreakSplitL", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "cubanBreakSplitL", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "cubanBreakSplitL", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "cubanBreakSplitL", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "cubanBreakSplitL", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "cubanBreakSplitL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "cubanBreakSplitL", "cubanBreakSplitR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "cubanBreakSplitL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "cubanBreakSplitL", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "cubanBreakSplitL", "newYorkRSP" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "cubanBreakSplitR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "cubanBreakSplitR", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "cubanBreakSplitR", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "cubanBreakSplitR", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "cubanBreakSplitR", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "cubanBreakSplitR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "cubanBreakSplitR", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "cubanBreakSplitR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "cubanBreakSplitR", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "cubanBreakSplitR", "newYorkLSP" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "curl", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "curl", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "curl", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "curl", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "curl", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "curl", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "curl", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "curl", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "curl", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "curl", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "curl", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "curl", "followMyLeader" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "curl", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "curl", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "curl", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "curl", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "curl", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "fan", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "fan", "hockeyStick" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "followMyLeader", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "followMyLeader", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "followMyLeader", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "followMyLeader", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "followMyLeader", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "followMyLeader", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "followMyLeader", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "followMyLeader", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "followMyLeader", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "followMyLeader", "hipTwistAdvanced" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "followMyLeader", "hipTwistSpiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "followMyLeader", "sweetheart" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "footChanges1", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "footChanges1", "basicOpen" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "footChanges2", "basicOpen" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "footChanges3", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "footChanges3", "basicOpen" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "footChanges4", "basicOpen" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "handToHandLSP", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "handToHandLSP", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "handToHandLSP", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "handToHandLSP", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "handToHandLSP", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "handToHandLSP", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "handToHandLSP", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "handToHandLSP", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "handToHandLSP", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "handToHandLSP", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "handToHandLSP", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "handToHandLSP", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "handToHandLSP", "ropeSpinning" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "handToHandLSP", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "handToHandLSP", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "handToHandLSP", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "handToHandRSP", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "handToHandRSP", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "handToHandRSP", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "handToHandRSP", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "handToHandRSP", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "handToHandRSP", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "handToHandRSP", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "handToHandRSP", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "handToHandRSP", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "handToHandRSP", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "handToHandRSP", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "handToHandRSP", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "handToHandRSP", "aida" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "handToHandRSP", "spiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "handToHandRSP", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "handToHandRSP", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "hipTwistAdvanced", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "hipTwistAdvanced", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "hipTwistAdvanced", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "hipTwistAdvanced", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "hipTwistAdvanced", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "hipTwistAdvanced", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "hipTwistAdvanced", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "hipTwistAdvanced", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "hipTwistAdvanced", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "hipTwistAdvanced", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "hipTwistAdvanced", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "hipTwistAdvanced", "followMyLeader" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "hipTwistAdvanced", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "hipTwistAdvanced", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "hipTwistAdvanced", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "hipTwistAdvanced", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "hipTwistAdvanced", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "hipTwistClosed", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "hipTwistClosed", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "hipTwistClosed", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "hipTwistClosed", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "hipTwistClosed", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "hipTwistClosed", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "hipTwistClosed", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "hipTwistClosed", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "hipTwistClosed", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "hipTwistClosed", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "hipTwistClosed", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "hipTwistClosed", "followMyLeader" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "hipTwistClosed", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "hipTwistClosed", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "hipTwistClosed", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "hipTwistClosed", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "hipTwistClosed", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "hipTwistOpen", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "hipTwistOpen", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "hipTwistOpen", "hipTwistSpiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "hipTwistOpen", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "hipTwistOpen", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "hipTwistOpen", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "hipTwistOpen", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "hipTwistOpen", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "hipTwistOpen", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "hipTwistOpen", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "hipTwistOpen", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "hipTwistOpen", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "hipTwistOpen", "followMyLeader" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "hipTwistOpen", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "hipTwistOpen", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "hipTwistOpen", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "hipTwistOpen", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Gold", "hipTwistOpen", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "hipTwistSpiral", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "hipTwistSpiral", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "hipTwistSpiral", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "hipTwistSpiral", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "hipTwistSpiral", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "hipTwistSpiral", "cubanBreakSplitL" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "hockeyStick", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "hockeyStick", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "hockeyStick", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "hockeyStick", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "hockeyStick", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "hockeyStick", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "hockeyStick", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "hockeyStick", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "hockeyStick", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "hockeyStick", "followMyLeader" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "hockeyStick", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "hockeyStick", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "hockeyStick", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "hockeyStick", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "hockeyStick", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "hockeyStick", "cubanBreakSplitL" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "naturalOpeningOut", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "naturalOpeningOut", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "naturalOpeningOut", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "naturalOpeningOut", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "naturalOpeningOut", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "naturalTop", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "naturalTop", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "naturalTop", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "naturalTop", "naturalOpeningOut" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "naturalTop", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "naturalTop", "spiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "naturalTop", "ropeSpinning" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "naturalTop", "hipTwistAdvanced" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "naturalTop", "hipTwistSpiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "naturalTop", "hockeyStick" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "newYorkLSP", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "newYorkLSP", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "newYorkLSP", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "newYorkLSP", "cubanBreakSplitR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "newYorkLSP", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "newYorkLSP", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "newYorkLSP", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "newYorkLSP", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "newYorkLSP", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "newYorkLSP", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "newYorkLSP", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "newYorkLSP", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "newYorkLSP", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "newYorkLSP", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "newYorkRSP", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "newYorkRSP", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "newYorkRSP", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "newYorkRSP", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "newYorkRSP", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "newYorkRSP", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "newYorkRSP", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "newYorkRSP", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "newYorkRSP", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "newYorkRSP", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "newYorkRSP", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "newYorkRSP", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "newYorkRSP", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "newYorkRSP", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "newYorkRSP", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "openingOutFromReverseTop", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "openingOutFromReverseTop", "hockeyStick" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "reverseTop", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "reverseTop", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "reverseTop", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "reverseTop", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "reverseTop", "openingOutFromReverseTop" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "reverseTop", "aida" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "reverseTop", "spiral" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "ropeSpinning", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "ropeSpinning", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "ropeSpinning", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "ropeSpinning", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "ropeSpinning", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "ropeSpinning", "sideStepLwithLF"  );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "ropeSpinning", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "ropeSpinning", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "ropeSpinning", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "ropeSpinning", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "ropeSpinning", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "ropeSpinning", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "ropeSpinning", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "ropeSpinning", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "ropeSpinning", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "ropeSpinning", "naturalOpeningOut" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "ropeSpinning", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Gold", "ropeSpinning", "spiral" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Gold", "ropeSpinning", "ropeSpinning" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Gold", "ropeSpinning", "hipTwistAdvanced" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (21, "Gold", "ropeSpinning", "hipTwistSpiral" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "spiral", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "spiral", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "spiral", "hockeyStick" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "spiral", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "spiral", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "spiral", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "spiral", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "spiral", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "spiral", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "spiral", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "spiral", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "spiral", "followMyLeader" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "spiral", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "spiral", "spotOrSwitchTurnR"  );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "spiral", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "spiral", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "spiral", "reverseTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "shoulderToShoulderL", "shoulderToShoulderR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "shoulderToShoulderL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "shoulderToShoulderL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "shoulderToShoulderL", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "shoulderToShoulderL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "shoulderToShoulderL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "shoulderToShoulderL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "shoulderToShoulderL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "shoulderToShoulderL", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "shoulderToShoulderL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "shoulderToShoulderL", "hipTwistClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "shoulderToShoulderL", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "shoulderToShoulderL", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "shoulderToShoulderL", "cubanBreakSplitR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "shoulderToShoulderL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "shoulderToShoulderL", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "shoulderToShoulderR", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "shoulderToShoulderR", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "shoulderToShoulderR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "shoulderToShoulderR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "shoulderToShoulderR", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "shoulderToShoulderR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "shoulderToShoulderR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "shoulderToShoulderR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "shoulderToShoulderR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "shoulderToShoulderR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "shoulderToShoulderR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "shoulderToShoulderR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "shoulderToShoulderR", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "shoulderToShoulderR", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "shoulderToShoulderR", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "shoulderToShoulderR", "threeChasForward" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "sideStepLwithLF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "sideStepLwithLF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "sideStepLwithLF", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "sideStepLwithLF", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "sideStepLwithLF", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "sideStepLwithLF", "shoulderToShoulderR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "sideStepLwithLF", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "sideStepLwithLF", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "sideStepLwithLF", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "sideStepLwithLF", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "sideStepLwithLF", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "sideStepLwithRF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "sideStepLwithRF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "sideStepLwithRF", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "sideStepLwithRF", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "sideStepLwithRF", "fan" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "sideStepRwithLF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "sideStepRwithLF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "sideStepRwithLF", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "sideStepRwithLF", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "sideStepRwithLF", "fan" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "sideStepRwithRF", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "sideStepRwithRF", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "sideStepRwithRF", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "sideStepRwithRF", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "sideStepRwithRF", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "sideStepRwithRF", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "sideStepRwithRF", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "sideStepRwithRF", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "sideStepRwithRF", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "sideStepRwithRF", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "sideStepRwithRF", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "sideStepRwithRF", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "spotOrSwitchTurnL", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "spotOrSwitchTurnL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "spotOrSwitchTurnL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "spotOrSwitchTurnL", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "spotOrSwitchTurnL", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "spotOrSwitchTurnL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "spotOrSwitchTurnL", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "spotOrSwitchTurnL", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "spotOrSwitchTurnL", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "spotOrSwitchTurnL", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "spotOrSwitchTurnL", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "spotOrSwitchTurnL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "spotOrSwitchTurnL", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "spotOrSwitchTurnL", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "spotOrSwitchTurnL", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "spotOrSwitchTurnL", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "spotOrSwitchTurnL", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Gold", "spotOrSwitchTurnL", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Gold", "spotOrSwitchTurnL", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Gold", "spotOrSwitchTurnL", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (21, "Gold", "spotOrSwitchTurnL", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (22, "Gold", "spotOrSwitchTurnL", "followMyLeader" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "spotOrSwitchTurnR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "spotOrSwitchTurnR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "spotOrSwitchTurnR", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "spotOrSwitchTurnR", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "spotOrSwitchTurnR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "spotOrSwitchTurnR", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "spotOrSwitchTurnR", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "spotOrSwitchTurnR", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "spotOrSwitchTurnR", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "spotOrSwitchTurnR", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "spotOrSwitchTurnR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "spotOrSwitchTurnR", "aida" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "spotOrSwitchTurnR", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "spotOrSwitchTurnR", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "sweetheart", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "sweetheart", "hockeyStick" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "thereAndBack", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "thereAndBack", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "thereAndBack", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "thereAndBack", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "thereAndBack", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "thereAndBack", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "thereAndBack", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "thereAndBack", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "thereAndBack", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "thereAndBack", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "thereAndBack", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "thereAndBack", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "threeChasBack", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "threeChasBack", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "threeChasBack", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "threeChasBack", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "threeChasBack", "naturalTop" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "threeChasForward", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "threeChasForward", "aida" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "threeChasForward", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "threeChasForward", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "threeChasForward", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "threeChasForward", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "threeChasForward", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "threeChasForward", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "threeChasForward", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "threeChasForward", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "threeChasForward", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "threeChasForward", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "threeChasForward", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "threeChasForward", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "threeChasForward", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "threeChasForward", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "threeChasForward", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Gold", "threeChasForward", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Gold", "threeChasForward", "followMyLeader" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Gold", "threeChasForward", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (21, "Gold", "threeChasForward", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (22, "Gold", "threeChasForward", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (23, "Gold", "threeChasForward", "spotOrSwitchTurnR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "timeStepL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "timeStepL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "timeStepL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "timeStepL", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "timeStepL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "timeStepL", "shoulderToShoulderR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "timeStepL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "timeStepL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "timeStepL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "timeStepL", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "timeStepL", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "timeStepL", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "timeStepR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "timeStepR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "timeStepR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "timeStepR", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "timeStepR", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "timeStepR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "timeStepR", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "timeStepR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "timeStepR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "timeStepR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "timeStepR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "timeStepR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "timeStepR", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "timeStepR", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "timeStepR", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "timeStepR", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", "timeStepR", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Gold", "timeStepR", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Gold", "timeStepR", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Gold", "timeStepR", "turkishTowel" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (21, "Gold", "timeStepR", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (22, "Gold", "timeStepR", "followMyLeader" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "turkishTowel", "alemana" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "turkishTowel", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "turkishTowel", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "turkishTowel", "hipTwistOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "turkishTowel", "curl" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "turkishTowel", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "turkishTowel", "cubanBreakSplitL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "turkishTowel", "chase" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "turkishTowel", "sweetheart" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "turkishTowel", "followMyLeader" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "underarmTurnL", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "underarmTurnL", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "underarmTurnL", "newYorkRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "underarmTurnL", "spotOrSwitchTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "underarmTurnL", "underarmTurnR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "underarmTurnL", "handToHandLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "underarmTurnL", "sideStepLwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "underarmTurnL", "sideStepRwithRF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "underarmTurnL", "timeStepR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "underarmTurnL", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "underarmTurnL", "naturalTop" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "underarmTurnL", "aida" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "underarmTurnL", "cubanBreakR" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "underarmTurnL", "cubanBreakSplitR" );

INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", "underarmTurnR", "basicCross" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", "underarmTurnR", "basicClosed" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", "underarmTurnR", "basicOpen" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", "underarmTurnR", "newYorkLSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", "underarmTurnR", "spotOrSwitchTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", "underarmTurnR", "underarmTurnL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", "underarmTurnR", "shoulderToShoulderL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", "underarmTurnR", "handToHandRSP" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", "underarmTurnR", "sideStepLwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", "underarmTurnR", "sideStepRwithLF" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", "underarmTurnR", "thereAndBack" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", "underarmTurnR", "timeStepL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", "underarmTurnR", "threeChasForward" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", "underarmTurnR", "fan" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", "underarmTurnR", "cubanBreakL" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", "underarmTurnR", "cubanBreakSplitL" );

/*
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (01, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (02, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (03, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (04, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (05, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (06, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (07, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (08, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (09, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (10, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (11, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (12, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (13, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (14, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (15, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (16, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (17, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (18, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (19, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (20, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (21, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (22, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (23, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (24, "Gold", " ", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (25, "Gold", " ", "" );



INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );
INSERT INTO Move_Seq_ChaCha(preference, level, move_id, next_move_id) VALUES (00, "Gold", "", "" );

*/


-- SQL queries
SELECT * FROM Moves_ChaCha;
SELECT * FROM Move_Seq_ChaCha;




