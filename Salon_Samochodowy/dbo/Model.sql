
CREATE TABLE [dbo].[Model]
(
	[ModelID] INT IDENTITY (1,1) NOT NULL, 
    [Nazwa] NVARCHAR(50) NULL, 
    [Kod] NVARCHAR(20) NULL, 
    [Typ] NVARCHAR(20) NULL, 
    [MarkaID] INT NULL, 
    CONSTRAINT [PK_Model] PRIMARY KEY ([ModelID]), 
    CONSTRAINT [FK_Model] FOREIGN KEY ([MarkaID]) REFERENCES [Marka]([MarkaID])
)
