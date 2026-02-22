SELECT 
    P.Name, P.Vorname, P.Geburtsdatum, B.Beruf, G.[Gender kurz]
FROM (Gender AS G 
INNER JOIN Personen AS P ON G.GenderID = P.GenderID) 
INNER JOIN (Beruf AS B 
INNER JOIN Mitarbeiter AS M ON B.BerufID = M.BerufID) ON P.PersonenID = M.PersonID
ORDER BY P.Name, P.Vorname;