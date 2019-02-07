CREATE TABLE [dbo].[Pracownik]
(
	[PracownikID] INT IDENTITY (1,1) NOT NULL, 
    [Imie] NVARCHAR(30) NOT NULL, 
    [Nazwisko] NVARCHAR(50) NOT NULL, 
	[Pesel] CHAR(11) NOT NULL,
    CONSTRAINT [PK_Pracownik] PRIMARY KEY ([PracownikID]), 
    CONSTRAINT [UQ_Pesel] UNIQUE ([Pesel]) 
)