CREATE TABLE [HR].[PracownikZespol]
(
	[PracownikID] INT NOT NULL, 
    [ZespolID] INT NOT NULL, 
    CONSTRAINT [PK_PracownikZespol] PRIMARY KEY ([PracownikID], [ZespolID]), 
    CONSTRAINT [FK_PracownikZespol_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [Pracownik]([PracownikID]), 
    CONSTRAINT [FK_PracownikZespol_Zespol] FOREIGN KEY ([ZespolID]) REFERENCES [HR].[Zespol]([ZespolID])

)
