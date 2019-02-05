CREATE TABLE [dbo].[Cennik]
(
	[CennikID] INT IDENTITY (1,1) NOT NULL, 
    [Cena] MONEY NOT NULL, 
    [WaznyOd] DATE NOT NULL, 
    [WaznyDo] DATE NULL, 
    [ModelID] INT NOT NULL, 
    CONSTRAINT [PK_Cennik] PRIMARY KEY ([CennikID]), 
    CONSTRAINT [FK_Cennik_Model] FOREIGN KEY ([ModelID]) REFERENCES [Model]([ModelID])
    
 
)
