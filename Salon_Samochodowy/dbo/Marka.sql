﻿CREATE TABLE [dbo].[Marka]
(
	[MarkaID] INT IDENTITY (1,1) NOT NULL, 
    [Nazwa] NVARCHAR(25) NOT NULL,
    [Kod] NVARCHAR(3) NOT NULL, 
    CONSTRAINT [PK_Marka] PRIMARY KEY ([MarkaID]) 
)
