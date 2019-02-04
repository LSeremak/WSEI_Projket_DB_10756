CREATE TABLE [dbo].[Marki]
(
	[Marka_Id] INT IDENTITY (1,1) NOT NULL, 
    [Marka_Nazwa] NVARCHAR(25) NOT NULL,
    [Marka_Kod] NVARCHAR(3) NOT NULL, 
    CONSTRAINT [PK_Marki] PRIMARY KEY ([Marka_Id]) 
)
