SELECT 
    P.Name AS SchuelerName, P.Vorname AS SchuelerVorname, V.Verwandschaft, 
    P_Eltern.Name AS ElternName, P_Eltern.Vorname AS ElternVorname
FROM Verwandschaft AS V 
INNER JOIN (((Gender AS G 
INNER JOIN Personen AS P ON G.GenderID = P.GenderID) 
INNER JOIN Schueler AS S ON P.PersonenID = S.PersonID) 
INNER JOIN (((Eltern AS E 
INNER JOIN Personen AS P_Eltern ON E.PersonID = P_Eltern.PersonenID) 
INNER JOIN Gender AS G_Eltern ON P_Eltern.GenderID = G_Eltern.GenderID) 
INNER JOIN ElternSchueler AS ES ON E.ElternID = ES.ElternID) ON S.SchuelerID = ES.SchuelerID) ON V.VerwandschaftID = ES.VerwandschaftID
ORDER BY P.Name, V.Verwandschaft;