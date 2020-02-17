DROP DATABASE IF EXISTS calendar;

CREATE DATABASE calendar;

USE calendar;

DROP TABLE IF EXISTS events;

CREATE TABLE events (
	id int IDENTITY(1, 1) PRIMARY KEY CLUSTERED NOT NULL,
    userId nvarchar(50) NOT NULL,
    title nvarchar(200) NOT NULL,
    description nvarchar(1000) NULL,
    startDate date NOT NULL,
    endDate date NULL,
    endTIme time(0) NULL,
    INDEX idx_events_userId (userId)
    
);