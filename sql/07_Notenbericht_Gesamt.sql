SELECT 
    N.Datum, K.Klasse, P.Name AS SchuelerName, F.Schulfach, AA.Aufgabenart, 
    NA.Note, NA.Bezeichnung, P_Lehrer.Name AS LehrerName
FROM (Lehrer AS L 
INNER JOIN (Notenarten AS NA 
INNER JOIN (Aufgabenarten AS AA 
INNER JOIN (Faecher AS F 
INNER JOIN (LehrerFach AS LF 
INNER JOIN (Personen AS P 
INNER JOIN ((Klassen AS K 
INNER JOIN (KlasseFach AS KF ON K.KlassenID = KF.KlasseID) ON K.KlassenID = KF.KlasseID) 
INNER JOIN (Schueler AS S 
INNER JOIN Noten AS N ON S.SchuelerID = N.SchuelerID) ON (KF.KlasseFachID = N.KlasseFachID) AND (K.KlassenID = S.KlasseID)) ON P.PersonenID = S.PersonID) ON LF.LehrerFachID = KF.LehrerFachID) ON F.SchulfachID = LF.FachID) ON AA.AufgabenartID = N.AufgabenArtID) ON NA.NotenartID = N.NotenartID) ON L.LehrerID = LF.LehrerID) 
INNER JOIN Personen AS P_Lehrer ON L.PersonID = P_Lehrer.PersonenID
ORDER BY N.Datum DESC, K.Klasse, P.Name;