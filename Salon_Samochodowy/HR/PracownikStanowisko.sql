CREATE TABLE [HR].[PracownikStanowisko]
(
	[PracownikID] INT NOT NULL, 
    [Stanowisko] NVARCHAR(100) NOT NULL, 
    [ZatrudnienieOd] DATE NOT NULL, 
    [ZatrudnienieDo] DATE NULL, 
    CONSTRAINT [PK_PracownikStanowisko] PRIMARY KEY ([PracownikID],[Stanowisko]), 
    CONSTRAINT [FK_PracownikStanowisko_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [Pracownik]([PracownikID]), 
    CONSTRAINT [FK_PracownikStanowisko_Stanowisko] FOREIGN KEY ([Stanowisko]) REFERENCES [HR].[Stanowisko]([Stanowisko]), 
    CONSTRAINT [CK_PracownikStanowisko_Zatrudnienie] CHECK ([ZatrudnienieDo] > [ZatrudnienieOd]),



)
