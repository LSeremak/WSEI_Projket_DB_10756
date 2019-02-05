CREATE TABLE [dbo].[Zamowienie]
(
	[ZamowienieID] INT IDENTITY (1,1) NOT NULL, 
    [Cena] MONEY NOT NULL, 
    [DataUtowrzenia] DATETIME NOT NULL, 
    [DataOdbioru] DATETIME NULL, 
    [Zrealizowane] BIT, 
    [Oplacone] BIT, 
    [ModelID] INT NOT NULL, 
    [PracownikID] INT NOT NULL, 
    [KlientID] INT NOT NULL, 
    CONSTRAINT [PK_Zamowienie] PRIMARY KEY ([ZamowienieID]), 
    CONSTRAINT [CH_Cena] CHECK ([Cena] >(0)), 
    CONSTRAINT [FK_Zamowienie_Model] FOREIGN KEY ([ModelID]) REFERENCES [Model]([ModelID]), 
	CONSTRAINT [FK_Zamowienie_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [Pracownik] ([PracownikID]),
	CONSTRAINT [FK_Zamowienie_Klient] FOREIGN KEY ([KlientID]) REFERENCES [Klient]([KlientID]),

	
)
