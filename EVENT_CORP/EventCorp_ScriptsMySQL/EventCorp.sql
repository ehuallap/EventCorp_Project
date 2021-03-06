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

ALTER TABLE Organizers ADD INDEX(OrganizerName);
ALTER TABLE Categories ADD INDEX(CategoryName);

CREATE TABLE IF NOT EXISTS Events(
	EventID INT AUTO_INCREMENT NOT NULL,
	EventTitle VARCHAR(50) NOT NULL,
	EventDescription TEXT,
   	EventDateTimeStart DATETIME,
    	EventDateTimeEnd DATETIME,
	EventSubscribers INT NOT NULL,
    	EventImage BLOB,
	CategoryName VARCHAR(500),
    CONSTRAINT kfeventos_category
    FOREIGN KEY(CategoryName)REFERENCES Categories(CategoryName),
    OrganizerName VARCHAR(500),
    CONSTRAINT kfeventos_organizer
    FOREIGN KEY(OrganizerName) REFERENCES Organizers(OrganizerName),
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

INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Videojuegos', 'Estos eventos pertenecen a la categoria de desarrollo de Videojuegos');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo en Web', 'Estos eventos pertenecen a la categoria de desarrollo Web');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de hardware', 'Estos eventos pertenecen al desarrollo de hardware y mecatr??nica');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Inteligencia Artificial', 'Estos eventos pertenecen a los topicos de IA y Visi??n Artificial');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Base de Datos', 'Estos eventos pertenecen a Introduccion a Base de Datos');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Dise??o Web', 'Estos eventos pertenecen a la categoria de Desarrollo Frameworks');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Software', 'Estos eventos pertenecen a la categoria de implementaci??n de Softwares');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Biotecnolog??a', 'Estos eventos pertenecen a la categoria de Biotecnolog??a ');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Ciberseguridad', 'Estos eventos pertenecen a la categoria de Ciber inform??tica y Seguridad en Redes');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Realidad Virtual', 'Estos eventos pertenecen a la categoria de Realidad Aumentada');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Lenguajes de Programaci??n', 'Estos eventos pertenecen a la categoria de Lenguajes de Programaci??n');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Aplicativos M??viles', 'Estos eventos pertenecen a la categoria de Desarrollo de Aplicaciones M??viles');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Encriptaci??n', 'Estos eventos pertenecen a la categoria de Encriptaci??n');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Ciencia y Tecnolog??a aplicada', 'Estos eventos pertenecen a la categoria de Ciencias y Tecnolog??as');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Algoritmos Inform??ticos', 'Estos eventos pertenecen a la categoria de Algoritmos de Informaci??n ');

INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Flores', 'Luis', 'luis@gmail.com', '0', 'flores');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Quispe', 'Alberto', 'alberto@gmail.com', '0', 'quispe');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('S??nchez', 'Juan', 'juan@gmail.com', '0', 'sanchez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Rodr??guez', 'Carlos', 'carlos@gmail.com', '0', 'rodriguez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Garc??a', 'Miguel', 'miguel@gmail.com', '0', 'garcia');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Rojas', 'Angel', 'angel@gmail.com', '0', 'rojas');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('D??az', 'Jose', 'jose@gmail.com', '0', 'diaz');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Torres ', 'Marco', 'marco@gmail.com', '0', 'torres');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('L??pez', 'Antonio', 'antonio@gmail.com', '0', 'lopez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Gonz??les', 'Jorge', 'jorge@gmail.com', '0', 'gonzales');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('P??rez', 'Carlos', 'carlosp@gmail.com', '0', 'perez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Chavez', 'C??sar', 'cesar@gmail.com', '0', 'chavez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Vasquez', 'Antonio', 'antonio@gmail.com', '0', 'vasquez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Ramos', 'Enrique', 'enrique@gmail.com', '0', 'ramos');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Ram??rez', 'Alfredo', 'alfredo@gmail.com', '0', 'ramirez');

INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('gamescom', 'Organizador de Juegos');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('devcom', 'Organizador de Juegos');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('bigdata', 'Organizador de Desarollo Web');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('FOCUS REACTIVE', 'Organizador de Desarrollo en Web');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('CodeSintax, RavenLoop, Intelygenz', 'Organizador de Lenguajes de programaci??n');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('Paradigma', 'Organizador de Base de Datos');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('SCBCN21', 'Organizador de Software');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('InfoQ', 'Organizador de Software');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('Google', 'Organizador de Base de Datos');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('Devoxx family', 'Organizador de Ciencia y Tecnolog??a');

