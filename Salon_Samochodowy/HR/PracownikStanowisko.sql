CREATE TABLE [HR].[PracownikStanowisko]
(
	[PracownikID] INT NOT NULL, 
    [StanowiskoID] INT NOT NULL, 
    [ZatrudnienieOd] DATE NOT NULL, 
    [ZatrudnienieDo] DATE NULL, 
    CONSTRAINT [PK_PracownikStanowisko] PRIMARY KEY ([PracownikID],[StanowiskoID]), 
    CONSTRAINT [FK_PracownikStanowisko_Pracownik] FOREIGN KEY ([PracownikID]) REFERENCES [Pracownik]([PracownikID]), 
    CONSTRAINT [FK_PracownikStanowisko_Stanowisko] FOREIGN KEY ([StanowiskoID]) REFERENCES [HR].[Stanowisko]([StanowiskoID]), 
    CONSTRAINT [CK_PracownikStanowisko_Zatrudnienie] CHECK ([ZatrudnienieDo] > [ZatrudnienieOd]),



)
