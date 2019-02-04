CREATE TABLE [dbo].[Zamówienia]
(
	[Zam_Id] INT IDENTITY (1,1) NOT NULL, 
    [Zam_Cena] MONEY NOT NULL, 
    [Zam_Data] DATETIME NOT NULL, 
    [Zam_DataOdbioru] DATETIME NULL, 
    [Zam_Zrealizowane] BIT, 
    [Zam_Oplacone] BIT, 
    CONSTRAINT [PK_Zamówienia] PRIMARY KEY ([Zam_Id]), 
    CONSTRAINT [CH_Cena_Zam] CHECK ([Zam_Cena] >(0))
	
)
