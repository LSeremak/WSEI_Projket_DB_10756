CREATE TABLE [dbo].[Cennik]
(
	[Cennik_Id] INT IDENTITY (1,1) NOT NULL, 
    [Model_id] INT NULL, 
    [Cena] MONEY NOT NULL, 
    [Data_od] DATE NOT NULL, 
    [Data_do] DATE NULL, 
    CONSTRAINT [PK_Cennik] PRIMARY KEY ([Cennik_Id])
    
 
)
