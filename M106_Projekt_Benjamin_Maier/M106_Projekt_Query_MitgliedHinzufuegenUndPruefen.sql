CREATE PROCEDURE MitgliedHinzufuegenUndPruefen
    @Name NVARCHAR(50),
    @Geburtsdatum DATE,
    @MitgliedSeit DATE,
    @Aktiv BIT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Mitglieder WHERE Name = @Name AND Geburtsdatum = @Geburtsdatum)
    BEGIN
        PRINT 'Mitglied existiert bereits.'
        RETURN
    END

    IF @Aktiv = 0
    BEGIN
        PRINT 'Nur aktive Mitglieder können hinzugefügt werden.'
        RETURN
    END

    INSERT INTO Mitglieder (Name, Geburtsdatum, MitgliedSeit, Aktiv)
    VALUES (@Name, @Geburtsdatum, @MitgliedSeit, @Aktiv)

    SELECT COUNT(*) AS AnzahlAktiverMitglieder
    FROM Mitglieder
    WHERE Aktiv = 1
END

-- Abfrage

EXEC MitgliedHinzufuegenUndPruefen 
    @Name = 'Max Mustermann',
    @Geburtsdatum = '1990-05-20',
    @MitgliedSeit = '2024-01-01',
    @Aktiv = 1;
