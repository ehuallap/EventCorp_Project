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
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de hardware', 'Estos eventos pertenecen al desarrollo de hardware y mecatrónica');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Inteligencia Artificial', 'Estos eventos pertenecen a los topicos de IA y Visión Artificial');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Base de Datos', 'Estos eventos pertenecen a Introduccion a Base de Datos');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Diseño Web', 'Estos eventos pertenecen a la categoria de Desarrollo Frameworks');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Software', 'Estos eventos pertenecen a la categoria de implementación de Softwares');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Biotecnología', 'Estos eventos pertenecen a la categoria de Biotecnología ');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Ciberseguridad', 'Estos eventos pertenecen a la categoria de Ciber informática y Seguridad en Redes');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Realidad Virtual', 'Estos eventos pertenecen a la categoria de Realidad Aumentada');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Lenguajes de Programación', 'Estos eventos pertenecen a la categoria de Lenguajes de Programación');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Aplicativos Móviles', 'Estos eventos pertenecen a la categoria de Desarrollo de Aplicaciones Móviles');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Encriptación', 'Estos eventos pertenecen a la categoria de Encriptación');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Ciencia y Tecnología aplicada', 'Estos eventos pertenecen a la categoria de Ciencias y Tecnologías');
INSERT INTO `eventcorp`.`categories` (`CategoryName`, `CategoryDescription`) VALUES ('Desarrollo de Algoritmos Informáticos', 'Estos eventos pertenecen a la categoria de Algoritmos de Información ');

INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Flores', 'Luis', 'luis@gmail.com', '0', 'flores');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Quispe', 'Alberto', 'alberto@gmail.com', '0', 'quispe');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Sánchez', 'Juan', 'juan@gmail.com', '0', 'sanchez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Rodríguez', 'Carlos', 'carlos@gmail.com', '0', 'rodriguez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('García', 'Miguel', 'miguel@gmail.com', '0', 'garcia');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Rojas', 'Angel', 'angel@gmail.com', '0', 'rojas');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Díaz', 'Jose', 'jose@gmail.com', '0', 'diaz');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Torres ', 'Marco', 'marco@gmail.com', '0', 'torres');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('López', 'Antonio', 'antonio@gmail.com', '0', 'lopez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Gonzáles', 'Jorge', 'jorge@gmail.com', '0', 'gonzales');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Pérez', 'Carlos', 'carlosp@gmail.com', '0', 'perez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Chavez', 'César', 'cesar@gmail.com', '0', 'chavez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Vasquez', 'Antonio', 'antonio@gmail.com', '0', 'vasquez');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Ramos', 'Enrique', 'enrique@gmail.com', '0', 'ramos');
INSERT INTO `eventcorp`.`users` (`UserLastName`, `UserFirstName`, `UserEmail`, `UserEventsJoined`, `UserPassword`) VALUES ('Ramírez', 'Alfredo', 'alfredo@gmail.com', '0', 'ramirez');

INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('gamescom', 'Organizador de Juegos');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('devcom', 'Organizador de Juegos');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('bigdata', 'Organizador de Desarollo Web');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('FOCUS REACTIVE', 'Organizador de Desarrollo en Web');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('CodeSintax, RavenLoop, Intelygenz', 'Organizador de Lenguajes de programación');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('Paradigma', 'Organizador de Base de Datos');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('SCBCN21', 'Organizador de Software');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('InfoQ', 'Organizador de Software');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('Google', 'Organizador de Base de Datos');
INSERT INTO `eventcorp`.`organizers` (`OrganizerName`, `OrganizerDescription`) VALUES ('Devoxx family', 'Organizador de Ciencia y Tecnología');

