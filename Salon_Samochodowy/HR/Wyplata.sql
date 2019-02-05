CREATE TABLE [HR].[Wyplata]
(
	[PracownikID] INT NOT NULL, 
    [Kwota] NCHAR(10) NOT NULL, 
    [Typ] NCHAR(10) NOT NULL, 
    [OkreWyplaty] DATE NULL, 
    CONSTRAINT [PK_Wyplata] PRIMARY KEY ([PracownikID]), 
    CONSTRAINT [FK_Wyplata_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [Pracownik]([PracownikID]), 
    CONSTRAINT [CK_Wyplata_Typ] CHECK ([Typ] = 'pensja' OR [Typ] = 'premia')



)
