CREATE TABLE Team
(
  SemiCoachName VARCHAR(100) NOT NULL,
  OwnerName VARCHAR(100) NOT NULL,
  TeamName VARCHAR(100) NOT NULL,
  CoachName VARCHAR(100) NOT NULL,
  PRIMARY KEY (TeamName)
);

CREATE TABLE Standing
(
  points INT NOT NULL,
  TeamName VARCHAR(100) NOT NULL,
  FOREIGN KEY (TeamName) REFERENCES Team(TeamName)
);

CREATE TABLE Player
(
  PlayerID CHAR(9) NOT NULL,
  PlayerName VARCHAR(100) NOT NULL,
  Position INT NOT NULL,
  TeamName VARCHAR(100),
  PRIMARY KEY (PlayerID),
  FOREIGN KEY (TeamName) REFERENCES Team(TeamName)
);

CREATE TABLE Refree
(
  RefreeID CHAR(9) NOT NULL,
  RefreeName VARCHAR(100) NOT NULL,
  RExprience INT NOT NULL,
  RAge INT NOT NULL,
  PRIMARY KEY (RefreeID)
);

CREATE TABLE Game
(
  WinnerName VARCHAR(100) NOT NULL,
  LoserName VARCHAR(100) NOT NULL,
  GameDate VARCHAR(100) NOT NULL,
  ArenaName VARCHAR(100) NOT NULL,
  RefreeID CHAR(9) NOT NULL,
  PRIMARY KEY (GameDate),
  FOREIGN KEY (RefreeID) REFERENCES Refree(RefreeID)
);

CREATE TABLE Participates
(
  GameDate VARCHAR(100) NOT NULL,
  TeamName VARCHAR(100) NOT NULL,
  PRIMARY KEY (GameDate, TeamName),
  FOREIGN KEY (GameDate) REFERENCES Game(GameDate),
  FOREIGN KEY (TeamName) REFERENCES Team(TeamName)
);
