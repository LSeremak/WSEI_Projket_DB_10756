CREATE VIEW [rapOp].[v_HR_Premia]
	AS 
	SELECT pr.Imie,pr.Nazwisko,wy.Kwota
	FROM [Pracownik] AS pr
	JOIN [HR].[Wyplata] AS wy ON pr.PracownikID = wy.PracownikID
	WHERE wy.Typ = 'premia';
