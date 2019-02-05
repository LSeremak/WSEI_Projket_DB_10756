CREATE TABLE [HR].[PracownikZespol]
(
	[PracownikID] INT NOT NULL, 
    [Zespol] NVARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_PracownikZespol] PRIMARY KEY ([PracownikID], [Zespol]), 
    CONSTRAINT [FK_PracownikZespol_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [Pracownik]([PracownikID]), 
    CONSTRAINT [FK_PracownikZespol_Zespol] FOREIGN KEY ([Zespol]) REFERENCES [HR].[Zespol]([Zespol])

)
