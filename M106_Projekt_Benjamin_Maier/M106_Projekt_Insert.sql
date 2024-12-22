
use Verwaltung_FitnessCenter;
go

INSERT INTO Mitglieder (Name, Geburtsdatum, MitgliedSeit, Aktiv)
VALUES 
('Max Mustermann', '1990-01-15', '2020-01-01', 1),
('Lisa Müller', '1985-07-22', '2021-05-15', 1),
('Tom Schmidt', '1995-03-30', '2019-10-01', 0),
('Sarah Meier', '2000-12-05', '2022-03-10', 1),
('Anna Schulz', '1992-08-17', '2021-09-05', 1),
('Peter Fischer', '1988-04-12', '2018-06-20', 0),
('Laura Becker', '1997-11-25', '2022-01-15', 1),
('Jonas Wagner', '1993-06-18', '2020-08-10', 1),
('Mia Hofmann', '1999-02-14', '2021-11-01', 1),
('Leon Bauer', '1990-09-10', '2019-04-01', 1);


INSERT INTO Kurse (Kursname, Beschreibung, Preis)
VALUES 
('Yoga', 'Einsteigerkurs für Yoga', 50.00),
('Pilates', 'Kurs für Fortgeschrittene', 60.00),
('Zumba', 'Tanz und Fitness kombiniert', 40.00),
('Krafttraining', 'Muskelaufbau für Anfänger', 70.00),
('Schwimmen', 'Techniktraining im Wasser', 80.00),
('Laufen', 'Lauftechnik und Ausdauer', 30.00),
('Boxen', 'Grundlagen des Boxens', 90.00),
('Spinning', 'Intensives Radfahren', 55.00),
('Tanzen', 'Einführung in Gesellschaftstänze', 45.00),
('Meditation', 'Achtsamkeit und Entspannung', 20.00);


INSERT INTO Trainer (Name, Spezialisierung, Einstellungsdatum)
VALUES 
('Katrin Braun', 'Yoga', '2018-01-01'),
('Michael König', 'Pilates', '2019-05-15'),
('Sophie Schwarz', 'Zumba', '2020-10-01'),
('Johannes Weiß', 'Krafttraining', '2021-03-10'),
('Emily Richter', 'Schwimmen', '2019-09-05'),
('Tobias Lange', 'Laufen', '2018-06-20'),
('Marie Klein', 'Boxen', '2020-01-15'),
('Daniel Hoffmann', 'Spinning', '2020-08-10'),
('Nina Schuster', 'Tanzen', '2021-11-01'),
('Paul Schröder', 'Meditation', '2019-04-01');

INSERT INTO Teilnahmen (MitgliedID, KursID, Teilnahmedatum)
VALUES 
(1, 1, '2022-01-10'),
(2, 2, '2022-02-15'),
(3, 3, '2022-03-20'),
(4, 4, '2022-04-25'),
(5, 5, '2022-05-30'),
(6, 6, '2022-06-15'),
(7, 7, '2022-07-20'),
(8, 8, '2022-08-25'),
(9, 9, '2022-09-30'),
(10, 10, '2022-10-15');

INSERT INTO Kurse_Trainer (KursID, TrainerID)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
