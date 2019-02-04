CREATE TABLE [dbo].[Pracownicy]
(
	[Prac_Id] INT IDENTITY (1,1) NOT NULL, 
    [Prac_PESEL] CHAR(11) NULL, 
    [Prac_Imie] NVARCHAR(20) NULL, 
    [Prac_Nazwisko] NVARCHAR(50) NULL, 
    CONSTRAINT [PK_Pracownicy] PRIMARY KEY ([Prac_Id]), 
    CONSTRAINT [UQ_Prac_PESEL] UNIQUE ([Prac_PESEL]) 
)