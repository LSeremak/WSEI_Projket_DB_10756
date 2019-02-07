CREATE VIEW [rapOp].[v_HR_PracownikStanowisko]
	AS 
	SELECT pr.Imie, pr.Nazwisko,st.Nazwa
	FROM [Pracownik] AS pr (READUNCOMMITTED)
	LEFT JOIN HR.PracownikStanowisko AS ps (READUNCOMMITTED) ON pr.PracownikID = ps.PracownikID
	JOIN HR.Stanowisko AS st (READUNCOMMITTED) ON st.StanowiskoID = ps.StanowiskoID;

	-- Widok prezentuje Pracowników oraz ich Stanowiska
	
