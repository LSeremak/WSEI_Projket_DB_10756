CREATE VIEW [rapOp].[v_ZamowieniaRabat]
	AS 
	SELECT za.ZamowienieID, (ce.Cena - za.Cena) / ce.Cena AS Rabat
	FROM [dbo].[Zamowienie] AS za (READUNCOMMITTED) 
	LEFT JOIN [dbo].[Cennik] AS ce (READUNCOMMITTED)  ON za.ModelID = ce.ModelID;
