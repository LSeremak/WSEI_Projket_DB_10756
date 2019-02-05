CREATE TABLE [HR].[Wynagrodzenie]
(
	[PracownikID] INT NOT NULL, 
    [Kwota] MONEY NOT NULL, 
    [WynagrodzenieOd] DATE NOT NULL, 
    [WynagrodzenieDo] DATE NULL, 
    CONSTRAINT [PK_Wynagrodzenie] PRIMARY KEY ([PracownikID]), 
    CONSTRAINT [FK_Wynagrodzenie_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [Pracownik]([PracownikID])


)
