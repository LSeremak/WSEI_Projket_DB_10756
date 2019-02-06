CREATE TABLE [HR].[Wynagrodzenie]
(
	[WynagrodzenieId] INT NOT NULL,  
    [Kwota] MONEY NOT NULL, 
    [OkresOd] DATE NOT NULL, 
    [OkresDo] DATE NULL, 
	[PracownikID] INT NOT NULL,
    CONSTRAINT [PK_Wynagrodzenie] PRIMARY KEY ([WynagrodzenieID]), 
    CONSTRAINT [FK_Wynagrodzenie_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [Pracownik]([PracownikID])


)
