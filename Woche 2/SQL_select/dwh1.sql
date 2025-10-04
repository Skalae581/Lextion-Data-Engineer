-- Kunden
CREATE TABLE IF NOT EXISTS dwh1.Kunden (
    Kunde INT PRIMARY KEY,
    WohnortDesKunden VARCHAR(100),
    LandkreisDesKunden VARCHAR(100)
);

-- Artikel
CREATE TABLE IF NOT EXISTS dwh1.Artikel (
    Artikel INT PRIMARY KEY,
    Artikelgruppe VARCHAR(100),
    ArtikelObergruppe VARCHAR(100)
);

-- Kassa
CREATE TABLE IF NOT EXISTS dwh1.Kassa (
    Kassa INT PRIMARY KEY,
    Filiale VARCHAR(100),
    Filialbezirk VARCHAR(100),
    Filialoberbezirk VARCHAR(100),
    FilialLandkreis VARCHAR(100),
    FilialBundesland VARCHAR(100),
    FilialStaat VARCHAR(100)
);

-- Zeit
CREATE TABLE IF NOT EXISTS dwh1.Zeit (
    Tag DATE PRIMARY KEY,
    Woche INT,
    Monat VARCHAR(20),
    Jahr INT
);

-- Faktentabelle
CREATE TABLE IF NOT EXISTS dwh1.Einkaeufe (
    Einkauf_ID SERIAL PRIMARY KEY,
    Kunde INT REFERENCES dwh1.Kunden(Kunde),
    Artikel INT REFERENCES dwh1.Artikel(Artikel),
    Kassa INT REFERENCES dwh1.Kassa(Kassa),
    Tag DATE REFERENCES dwh1.Zeit(Tag),
    Menge INT,
    Verkaufspreis DECIMAL(10,2)
);

-- Kunden (5)
INSERT INTO dwh1.Kunden VALUES
(1, 'Hamburg', 'HH'),
(2, 'Lüneburg', 'LG'),
(3, 'Berlin', 'B'),
(4, 'Kiel', 'KI'),
(5, 'Bremen', 'HB');

-- Artikel (5)
INSERT INTO dwh1.Artikel VALUES
(1, 'Sport', 'Outdoor'),
(2, 'Mode', 'Herren'),
(3, 'Technik', 'Audio'),
(4, 'Haushalt', 'Küche'),
(5, 'Freizeit', 'Garten');

-- Kassa (5)
INSERT INTO dwh1.Kassa VALUES
(1, 'Filiale HH', 'Bezirk A', 'Nord', 'HH-LK', 'Hamburg', 'Deutschland'),
(2, 'Filiale LG', 'Bezirk B', 'Nord', 'LG-LK', 'Niedersachsen', 'Deutschland'),
(3, 'Filiale B',  'Bezirk C', 'Ost',  'B-LK',  'Berlin', 'Deutschland'),
(4, 'Filiale KI', 'Bezirk D', 'Nord', 'KI-LK', 'Schleswig-Holstein', 'Deutschland'),
(5, 'Filiale HB', 'Bezirk E', 'West', 'HB-LK', 'Bremen', 'Deutschland');

-- Zeit (5)
INSERT INTO dwh1.Zeit VALUES
('2023-01-01', 1, 'Januar', 2023),
('2023-01-02', 1, 'Januar', 2023),
('2023-01-03', 1, 'Januar', 2023),
('2023-01-04', 1, 'Januar', 2023),
('2023-01-05', 1, 'Januar', 2023);

-- Faktentabelle (10)
INSERT INTO dwh1.Einkaeufe (Kunde, Artikel, Kassa, Tag, Menge, Verkaufspreis) VALUES
(1, 1, 1, '2023-01-01', 3, 49.99),
(2, 2, 2, '2023-01-02', 1, 99.95),
(3, 3, 3, '2023-01-03', 2, 15.00),
(4, 4, 4, '2023-01-04', 5, 29.90),
(5, 5, 5, '2023-01-05', 3, 65.55),
(1, 2, 1, '2023-01-02', 1, 99.99),
(2, 3, 2, '2023-01-03', 2, 10.00),
(3, 4, 3, '2023-01-04', 4, 44.44),
(4, 5, 4, '2023-01-05', 6, 88.88),
(5, 1, 5, '2023-01-01', 2, 55.00);
