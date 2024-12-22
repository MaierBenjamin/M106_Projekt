CREATE DATABASE fitness_club;

USE fitness_club;

CREATE TABLE Mitglieder (
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Name TEXT NOT NULL,
    Geburtsdatum DATE NOT NULL,
    MitgliedSeit DATE NOT NULL,
    Aktiv BOOLEAN NOT NULL
);

CREATE TABLE Kurse (
    KursID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Kursname TEXT NOT NULL,
    Beschreibung TEXT,
    Preis REAL NOT NULL
);

CREATE TABLE Trainer (
    TrainerID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Name TEXT NOT NULL,
    Spezialisierung TEXT NOT NULL,
    Einstellungsdatum DATE NOT NULL
);

CREATE TABLE Teilnahmen (
    TeilnahmeID INTEGER PRIMARY KEY AUTO_INCREMENT,
    MitgliedID INTEGER NOT NULL,
    KursID INTEGER NOT NULL,
    Teilnahmedatum DATE NOT NULL,
    FOREIGN KEY (MitgliedID) REFERENCES Mitglieder(ID),
    FOREIGN KEY (KursID) REFERENCES Kurse(KursID)
);

CREATE TABLE Kurse_Trainer (
    KursID INTEGER NOT NULL,
    TrainerID INTEGER NOT NULL,
    PRIMARY KEY (KursID, TrainerID),
    FOREIGN KEY (KursID) REFERENCES Kurse(KursID),
    FOREIGN KEY (TrainerID) REFERENCES Trainer(TrainerID)
);
