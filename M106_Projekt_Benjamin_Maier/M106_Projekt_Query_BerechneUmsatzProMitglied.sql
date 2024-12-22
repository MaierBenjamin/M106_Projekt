CREATE FUNCTION BerechneUmsatzProMitglied
    (@MitgliedID INT)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        m.Name AS Mitgliedsname,
        COUNT(t.KursID) AS AnzahlKurse,
        SUM(k.Preis) AS Gesamtumsatz,
        AVG(k.Preis) AS Durchschnittspreis
    FROM Teilnahmen t
    JOIN Kurse k ON t.KursID = k.KursID
    JOIN Mitglieder m ON t.MitgliedID = m.MitgliedID
    WHERE t.MitgliedID = @MitgliedID
      AND k.Preis > 0 
    GROUP BY m.Name
);


-- Abfrage
SELECT * FROM BerechneUmsatzProMitglied(1);



