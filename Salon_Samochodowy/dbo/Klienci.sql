CREATE TABLE [dbo].[Klienci]
(
	[Klient_Id] INT IDENTITY (1,1) NOT NULL, 
    [Nazwisko] NVARCHAR(50) NOT NULL, 
    [Imie] NVARCHAR(50) NOT NULL, 
    [Numer_Dowodu] NCHAR(9) UNIQUE NOT NULL, 
    
	CONSTRAINT [PK_Klienci] PRIMARY KEY ([Klient_Id]) 

)
