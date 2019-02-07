CREATE TABLE [Serwis].[HistoriaZamowienia]
(
	[HistoriaZamowieniaID] INT NOT NULL, 
	[Data] SMALLDATETIME DEFAULT (GETDATE()) NOT NULL, 
    [ZamowienieID] INT NOT NULL, 
    [PracownikID] INT NOT NULL, 
    [Status] NVARCHAR(20) NOT NULL, 
    CONSTRAINT [PK_HistoriaZamowienia] PRIMARY KEY ([HistoriaZamowieniaID]), 
    CONSTRAINT [FK_HistoriaZamowienia_Zamowienie] FOREIGN KEY ([ZamowienieID]) REFERENCES [Serwis].[Zamowienie]([ZamowienieID]), 
    CONSTRAINT [FK_HistoriaZamowienia_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [dbo].[Pracownik]([PracownikID]), 
    CONSTRAINT [FK_HistoriaZamowienia_Status] FOREIGN KEY ([Status]) REFERENCES [Serwis].[Status]([Nazwa])

)
