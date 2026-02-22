SELECT 
    F.Schulfach, P.Name, P.Vorname, LQ.Qualifikation, G.[Gender kurz]
FROM (Gender AS G 
INNER JOIN Personen AS P ON G.GenderID = P.GenderID) 
INNER JOIN (LehrerQualifikation AS LQ 
INNER JOIN (Lehrer AS L 
INNER JOIN (Faecher AS F 
INNER JOIN LehrerFach AS LF ON F.SchulfachID = LF.FachID) ON L.LehrerID = LF.LehrerID) ON LQ.LehrerQualifikationID = L.QualifikationID) ON P.PersonenID = L.PersonID
ORDER BY F.Schulfach, P.Name;