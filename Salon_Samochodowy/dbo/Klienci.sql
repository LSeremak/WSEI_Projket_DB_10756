CREATE TABLE [dbo].[Klienci]
(
	[Klient_Id] INT IDENTITY (1,1) NOT NULL, 
    [Nazwisko] NVARCHAR(50) NOT NULL, 
    [Imie] NVARCHAR(50) NOT NULL, 
    [Numer_Dowodu] NVARCHAR(50) UNIQUE NOT NULL, 
    [Miasto] NVARCHAR(50) NULL, 
    [Ulica] NVARCHAR(50) NULL 

)
