CREATE TABLE [Serwis].[Zamowienie]
(
	[ZamowienieID] INT NOT NULL, 
	[Cena] MONEY NOT NULL,
    [MarkaID] INT NOT NULL, 
    [ModelID] INT NOT NULL, 
    [UslugaID] INT NOT NULL, 
    [KlientID] INT NOT NULL, 
    CONSTRAINT [PK_Zamowienia] PRIMARY KEY ([ZamowienieID]), 
    CONSTRAINT [FK_Zamowienie_Marka] FOREIGN KEY ([MarkaID]) REFERENCES [Marka]([MarkaID]), 
    CONSTRAINT [FK_Zamowienie_Model] FOREIGN KEY ([ModelID]) REFERENCES [Model]([ModelID]), 
    CONSTRAINT [FK_Zamowienie_Usluga] FOREIGN KEY ([UslugaId]) REFERENCES [Serwis].[Usluga]([UslugaID]), 
    CONSTRAINT [FK_Zamowienie_Klient] FOREIGN KEY ([KlientID]) REFERENCES [Klient]([KlientID])

)
