CREATE VIEW [rapOP].[v_ModeleBezZamowienia]
	AS 
	SELECT mo.Nazwa
	FROM dbo.Model AS mo (READUNCOMMITTED) 
	LEFT JOIN dbo.Zamowienie AS za (READUNCOMMITTED)  ON mo.ModelID = za.ModelID
	WHERE za.ZamowienieID IS NULL;
