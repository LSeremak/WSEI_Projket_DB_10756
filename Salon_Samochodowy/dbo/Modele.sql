
CREATE TABLE [dbo].[Modele]
(
	[Model_Id] INT IDENTITY (1,1) NOT NULL, 
    [Model_Nazwa] NVARCHAR(50) NULL, 
    [Model_Kod] NVARCHAR(20) NULL, 
    [Model_Typ] NVARCHAR(20) NULL, 
    [Marka_Id] INT NULL, 
    CONSTRAINT [PK_Modele] PRIMARY KEY ([Model_Id]), 
    CONSTRAINT [FK_Modele_Marki] FOREIGN KEY ([Marka_Id]) REFERENCES [Marki]([Marka_Id])
)
