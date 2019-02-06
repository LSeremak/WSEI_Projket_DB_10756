CREATE VIEW [rapOp].[v_ListaMarek] AS

	 SELECT ma.Nazwa, COUNT(za.ZamowienieID) AS IloscZamowien,SUM(za.Cena) AS CenaSumaryczna   
	 FROM [dbo].[Marka] AS ma (READUNCOMMITTED) 
	 LEFT JOIN [Model] AS mo (READUNCOMMITTED)  ON ma.MarkaID = mo.MarkaID
	 LEFT JOIN [Zamowienie] AS za (READUNCOMMITTED)  ON za.ModelID = mo.ModelID
	 GROUp BY ma.Nazwa;
