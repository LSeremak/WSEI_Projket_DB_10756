CREATE TABLE [Serwis].[Zamowienie]
(
	[ZamowienieID] INT NOT NULL, 
	[Cena] MONEY NOT NULL,
    [ModelID] INT NOT NULL, 
    [UslugaID] INT NOT NULL, 
    [KlientID] INT NOT NULL, 
    [PracownikID] INT NOT NULL, 
    CONSTRAINT [PK_Zamowienia] PRIMARY KEY ([ZamowienieID]),  
    CONSTRAINT [FK_Zamowienie_Model] FOREIGN KEY ([ModelID]) REFERENCES [Model]([ModelID]), 
    CONSTRAINT [FK_Zamowienie_Usluga] FOREIGN KEY ([UslugaId]) REFERENCES [Serwis].[Usluga]([UslugaID]), 
    CONSTRAINT [FK_Zamowienie_Klient] FOREIGN KEY ([KlientID]) REFERENCES [Klient]([KlientID]), 
    CONSTRAINT [FK_Zamowienie_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [Pracownik]([PracownikID])

)
