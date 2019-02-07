CREATE VIEW [rapOp].[v_HR_Premia]
	AS 
	SELECT pr.Imie,pr.Nazwisko,wy.Kwota
	FROM [Pracownik] AS pr (READUNCOMMITTED)
	JOIN [HR].[Wyplata] AS wy (READUNCOMMITTED) ON pr.PracownikID = wy.PracownikID
	WHERE wy.Typ = 'premia';

	-- Widok prezentuje premie jaką uzykał Pracownik
