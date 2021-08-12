CREATE DATABASE EventCorp;

USE EventCorp;

CREATE TABLE IF NOT EXISTS Organizers(
	OrganizerID INT AUTO_INCREMENT NOT NULL,
	OrganizerName VARCHAR(500) NOT NULL,
	OrganizerDescription TEXT,
    PRIMARY KEY (OrganizerID)
);
ALTER TABLE Organizers AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Categories(
	CategoryID INT AUTO_INCREMENT NOT NULL,
	CategoryName VARCHAR(500) NOT NULL,
	CategoryDescription TEXT,
	PRIMARY KEY (CategoryID)
);
ALTER TABLE Categories AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Events(
	EventID INT AUTO_INCREMENT NOT NULL,
	EventTitle VARCHAR(50) NOT NULL,
	EventDescription TEXT,
    EventDateTimeStart DATETIME,
    EventDateTimeEnd DATETIME,
	EventSubscribers INT NOT NULL,
    EventImage BLOB,
    OrganizerID int,
    FOREIGN KEY(OrganizerID) REFERENCES Organizers(OrganizerID),
    CategoryID int,
    FOREIGN KEY(CategoryID)REFERENCES Categories(CategoryID),
	PRIMARY KEY(EventID)
);
ALTER TABLE Events AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Users(
	UserID INT AUTO_INCREMENT NOT NULL,
	UserLastName VARCHAR(500) NOT NULL,
	UserFirstName VARCHAR(500) NOT NULL,
	UserEmail VARCHAR(300) NOT NULL,
	UserEventsJoined INT NOT NULL,
    UserPassword VARCHAR(30),
	PRIMARY KEY (UserID)
);
ALTER TABLE Users AUTO_INCREMENT = 1;


CREATE TABLE IF NOT EXISTS Users_Events(
	Events_EventID INT NOT NULL,
	Users_UserID INT NOT NULL,
	PRIMARY KEY(Events_EventID, Users_UserID),
	FOREIGN KEY(Users_UserID) REFERENCES Users(UserID),
    FOREIGN KEY(Events_EventID) REFERENCES Events(EventID)
);
ALTER TABLE Users_Events AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Managers(
	ManagerID INT AUTO_INCREMENT NOT NULL,
	ManagerName VARCHAR(50) NOT NULL,
    ManagerPassword VARCHAR(50) NOT NULL,
	PRIMARY KEY(ManagerID)
);
ALTER TABLE Managers AUTO_INCREMENT = 1;

INSERT INTO Managers(ManagerName, ManagerPassword)
VALUES ("Marbel", "Picha");
INSERT INTO Managers(ManagerName, ManagerPassword)
VALUES ("Rushell", "Zavalaga");
INSERT INTO Managers(ManagerName, ManagerPassword)
VALUES ("Erick", "Hualla");
INSERT INTO Managers(ManagerName, ManagerPassword)
VALUES ("Eduardo", "Rojas");
INSERT INTO Managers(ManagerName, ManagerPassword)
VALUES ("Ricardo", "Rodriguez");
