SELECT 
    K.Klasse, P.Name, P.Vorname, P.Geburtsdatum, G.[Gender kurz]
FROM (Gender AS G 
INNER JOIN Personen AS P ON G.GenderID = P.GenderID) 
INNER JOIN (Klassen AS K 
INNER JOIN Schueler AS S ON K.KlassenID = S.KlasseID) ON P.PersonenID = S.PersonID
ORDER BY K.Klasse, P.Name;