SELECT 
    K.Klasse, F.Schulfach, KF.Hauptfach, KF.StdProWoche, R.Raum, P.Name AS LehrerName, P.Vorname AS LehrerVorname
FROM Raum AS R 
INNER JOIN ((Gender AS G 
INNER JOIN Personen AS P ON G.GenderID = P.GenderID) 
INNER JOIN (Lehrer AS L 
INNER JOIN ((Faecher AS F 
INNER JOIN LehrerFach AS LF ON F.SchulfachID = LF.FachID) 
INNER JOIN (Klassen AS K 
INNER JOIN KlasseFach AS KF ON K.KlassenID = KF.KlasseID) ON LF.LehrerFachID = KF.LehrerFachID) ON L.LehrerID = LF.LehrerID) ON P.PersonenID = L.PersonID) ON R.RaumID = KF.RaumID
ORDER BY K.Klasse, F.Schulfach;