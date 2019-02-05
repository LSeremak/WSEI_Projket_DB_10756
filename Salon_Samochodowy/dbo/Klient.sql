CREATE TABLE [dbo].[Klient]
(
	[KlientID] INT IDENTITY (1,1) NOT NULL, 
    [Imie] NVARCHAR(50) NOT NULL, 
    [Nazwisko] NVARCHAR(50) NOT NULL, 
    [NumerDowodu] NCHAR(9) UNIQUE NOT NULL, 
    
	CONSTRAINT [PK_Klient] PRIMARY KEY ([KlientID]) 

)
