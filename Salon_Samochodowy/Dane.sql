INSERT INTO Marka ([Nazwa])
VALUES 
('Fiat'),
('Opel'),
('Ford'),
('Renault'),
('Audi'),
('Mercedes'),
('Toyota'),
('Volkswagen'),
('Citroen'),
('Kia')
GO

INSERT INTO Pracownik([Imie],[Nazwisko],[Pesel])
VALUES
('Grażyna', 'Kowalska','86063077796'),
('Łukasz', 'Maliniak','90031589987'),
('Marcin', 'Cebula','70013156345'),
('Andrzej', 'Piątka','82091090791'),
('Monika', 'cytryna','88021478726')
GO

---------------------HR---------------------
INSERT INTO HR.Zespol([Nazwa])
VALUES
('Pierwszy'),
('Drugi'),
('Trzeci'),
('Czwarty')
GO

INSERT INTO HR.Stanowisko([Nazwa])
VALUES
('Młodszy Specjalista'),
('Specjalista'),
('Sprzedawca'),
('Konsultant')
GO

------------------Serwis---------------------

INSERT INTO [Serwis].[Status]
VALUES
('Przyjete'),
('W realizacji'),
('Zrealizowane'),
('Zakonczone')
GO
