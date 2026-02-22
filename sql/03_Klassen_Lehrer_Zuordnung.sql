SELECT 
    K.Klasse, P.Name, P.Vorname, LQ.Qualifikation, G.[Gender kurz]
FROM (Gender AS G 
INNER JOIN Personen AS P ON G.GenderID = P.GenderID) 
INNER JOIN (LehrerQualifikation AS LQ 
INNER JOIN (Lehrer AS L 
INNER JOIN Klassen AS K ON L.LehrerID = K.LehrerID) ON LQ.LehrerQualifikationID = L.QualifikationID) ON P.PersonenID = L.PersonID
ORDER BY K.Klasse;