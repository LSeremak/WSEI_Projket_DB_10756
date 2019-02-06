CREATE VIEW [rapOp].[v_RealizacjaZamowienPracownikow]
	AS 
	SELECT pr.Nazwisko,pr.Imie, COUNT(za.ZamowienieID) AS Zamowienia, SUM(za.Cena) AS LacznaKwotaZamowien
	FROM dbo.Pracownik As pr (READUNCOMMITTED) 
	JOIN dbo.Zamowienie AS za (READUNCOMMITTED)  ON pr.PracownikID = za.PracownikID
	GROUP BY pr.Nazwisko,pr.Imie
