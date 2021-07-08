CREATE DATABASE EventCorp;

USE EventCorp;

CREATE TABLE IF NOT EXISTS Events(
	EventID INT AUTO_INCREMENT NOT NULL,
	EventTitle VARCHAR(50) NOT NULL,
	EventDescription TEXT,
	EventDateStart VARCHAR(30) NOT NULL,
	EventDateEnd VARCHAR(30) NOT NULL,
	EventSubscribers INT NOT NULL,
	PRIMARY KEY(EventID)
);
ALTER TABLE Events AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Users(
	UserID INT AUTO_INCREMENT NOT NULL,
	UserLastName VARCHAR(500) NOT NULL,
	UserName VARCHAR(500) NOT NULL,
	UserEmail VARCHAR(300) NOT NULL,
	UserEventsJoined INT NOT NULL,
	PRIMARY KEY (UserID)
);
ALTER TABLE Users AUTO_INCREMENT = 1;

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

CREATE TABLE IF NOT EXISTS Organizers_Events(
	Events_EventID INT NOT NULL,
	Organizers_OrganizerID INT NOT NULL,
	PRIMARY KEY(Events_EventID, Organizers_OrganizerID),
	CONSTRAINT fkOrganizer_Events_Organizer
	FOREIGN KEY(Organizers_OrganizerID)
	REFERENCES Organizers(OrganizerID),
	CONSTRAINT fkOrganizer_Organizer_Events
	FOREIGN KEY(Events_EventID)
	REFERENCES Events(EventID)
);
ALTER TABLE Organizers_Events AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Categories_Events(
	Events_EventID INT NOT NULL,
	Categories_CategoryID INT NOT NULL,
	PRIMARY KEY(Events_EventID, Categories_CategoryID),
	CONSTRAINT fkCategory_Events_Category
	FOREIGN KEY(Categories_CategoryID)
	REFERENCES Categories(CategoryID),
	CONSTRAINT fkCategory_Category_Events
	FOREIGN KEY(Events_EventID)
	REFERENCES Events(EventID)
);
ALTER TABLE Categories_Events AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Users_Events(
	Events_EventID INT NOT NULL,
	Users_UserID INT NOT NULL,
	PRIMARY KEY(Events_EventID, Users_UserID),
	CONSTRAINT fkUser_Events_User
	FOREIGN KEY(Users_UserID)
	REFERENCES Users(UserID),
	CONSTRAINT fkUser_User_Events
	FOREIGN KEY(Events_EventID)
	REFERENCES Events(EventID)
);
ALTER TABLE Users_Events AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Managers(
	ManagerID INT AUTO_INCREMENT NOT NULL,
	ManagerName VARCHAR(50) NOT NULL,
    ManagerPassword VARCHAR(50) NOT NULL,
	PRIMARY KEY(ManagerID)
);
ALTER TABLE Managers AUTO_INCREMENT = 1;
