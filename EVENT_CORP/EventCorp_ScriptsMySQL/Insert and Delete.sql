USE eventcorp;

INSERT INTO Events(EventTitle, EventDescription, EventDateStart, EventDateEnd, EventSubscribers)
VALUES
("Museo", "Paseo por el museo de la UNSA", "12/08/2021", "20/08/2021", 0),
("Exposicion", "Un vistaso a algunas pinturas de los artistas de la ciudad", "30/08/2021", "31/09/2021", 0),
("Turismo", "Recorrido por toda la ciudad, descubre Arequipa", "14/08/2021", "17/08/2021", 0);

INSERT INTO Users(UserLastName, UserName, UserEmail, UserEventsJoined)
VALUES
("Rojas", "Eduardo", "erojasm@unsa.edu.pe", 0),
("Hualla", "Erick", "eperezchi@unsa.edu.pe", 0),
("Zavalaga", "Rushell", "rzavalaga@unsa.edu.pe", 0),
("Picha", "Marbel", "gpichac@unsa.edu.pe", 0),
("Rodriguez", "Ricardo", "rrodriguezp@unsa.edu.pe", 0);

INSERT INTO Organizers(	OrganizerName, OrganizerDescription)
VALUES
("Unsa","Paseo por el museo"),
("Ministerio de Cultura","Exposicion de pinturas en la plaza"),
("LaNave","Recorrido por la ciudad en bus");

INSERT INTO Managers(ManagerName, ManagerPassword)
VALUES
("Tony", "*****"),
("Bruce", "******");

INSERT INTO Categories(CategoryName, CategoryDescription)
VALUES
("Musica", "Para los amantes del sonido"),
("Arte", "Deja que vuele tu creatividad"),
("Deportes","Compiertete en un campeon");

INSERT INTO Organizers_Events(Events_EventID, Organizers_OrganizerID)
VALUES
(3,3);

INSERT INTO Categories_Events(Events_EventID, Categories_CategoryID)
VALUES
(3,3);

INSERT INTO Users_Events(Events_EventID, Users_UserID)
VALUES
(3,5);

SELECT * FROM Organizers;
SELECT * FROM Events;
SELECT * FROM Organizers_Events;
SELECT * FROM Events WHERE ClientID=1;
DELETE FROM Events WHERE ClientID=3;