CREATE TABLE [HR].[Wyplata]
(
	[WyplataID] INT NOT NULL,
    [Kwota] MONEY NOT NULL, 
    [Typ] NCHAR(10) NOT NULL, 
    [OkresOd] DATE NOT NULL, 
    [OkresDo] DATE NULL, 
	[PracownikID] INT NOT NULL, 
    CONSTRAINT [PK_Wyplata] PRIMARY KEY ([WyplataID]), 
    CONSTRAINT [FK_Wyplata_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [Pracownik]([PracownikID]), 
    CONSTRAINT [CK_Wyplata_Typ] CHECK ([Typ] = 'pensja' OR [Typ] = 'premia')



)
