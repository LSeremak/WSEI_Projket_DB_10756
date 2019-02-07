CREATE VIEW [rapOp].[v_Serwis_ZamowienieWRealizcaji]
	AS 
	SELECT za.ZamowienieID, st.Nazwa AS StatusZamowienia
	FROM Serwis.Zamowienie AS za (READUNCOMMITTED)
	JOIN Serwis.HistoriaZamowienia AS hz (READUNCOMMITTED) ON za.ZamowienieID = hz.ZamowienieID
	JOIN Serwis.Status AS st (READUNCOMMITTED) ON hz.Status = st.Nazwa
	WHERE st.Nazwa = 'W realizacji';
