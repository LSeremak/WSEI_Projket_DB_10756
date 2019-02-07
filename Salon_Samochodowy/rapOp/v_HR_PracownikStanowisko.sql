CREATE VIEW [rapOp].[v_HR_PracownikStanowisko]
	AS 
	SELECT pr.Imie, pr.Nazwisko,st.Nazwa
	FROM [Pracownik] AS pr
	LEFT JOIN HR.PracownikStanowisko AS ps ON pr.PracownikID = ps.PracownikID
	JOIN HR.Stanowisko AS st ON st.StanowiskoID = ps.StanowiskoID;
	
