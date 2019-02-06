
CREATE TABLE [dbo].[Model]
(
	[ModelID] INT IDENTITY (1,1) NOT NULL, 
    [Nazwa] NVARCHAR(50) NOT NULL, 
    [TypNadwozia] NVARCHAR(30) NOT NULL, 
    [MarkaID] INT NOT NULL, 
    CONSTRAINT [PK_Model] PRIMARY KEY ([ModelID]), 
    CONSTRAINT [FK_Model] FOREIGN KEY ([MarkaID]) REFERENCES [Marka]([MarkaID])
)
