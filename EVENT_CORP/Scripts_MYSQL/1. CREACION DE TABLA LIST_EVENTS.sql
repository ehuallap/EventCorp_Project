USE database_events;
CREATE TABLE IF NOT EXISTS List_Events
(
EventID INT AUTO_INCREMENT NOT NULL,
EventTitle VARCHAR(50) NOT NULL,
EventDescription TEXT,
EventDate VARCHAR(30) NOT NULL,
EventSubscribers INT NOT NULL,
PRIMARY KEY(EventID)
);