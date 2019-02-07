CREATE VIEW [rapOp].[v_HR_SrednieWynagrodzenieZespolu]
	AS 
	SELECT ze.ZespolID, ze.Nazwa AS NazwaZespolu, AVG(wy.Kwota) AS SrednieWynagordzenie
	 FROM HR.Wynagrodzenie AS wy
	 JOIN HR.PracownikZespol AS pz ON wy.PracownikID = pz.PracownikID
	 JOIN HR.Zespol AS ze ON pz.ZespolID = ze.ZespolID
	 GROUP BY ze.ZespolID, ze.Nazwa;
