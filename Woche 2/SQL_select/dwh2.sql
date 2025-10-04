CREATE TABLE IF NOT EXISTS dwh2.Jahr (
    Jahr INT PRIMARY KEY,
    JahrName VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS dwh2.Monat (
    Monat INT PRIMARY KEY,
    MonatName VARCHAR(20),
    Jahr INT REFERENCES dwh2.Jahr(Jahr)
);

CREATE TABLE IF NOT EXISTS dwh2.Woche (
    Woche INT PRIMARY KEY,
    WocheName VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS dwh2.Tag (
    Tag DATE PRIMARY KEY,
    Woche INT REFERENCES dwh2.Woche(Woche),
    Monat INT REFERENCES dwh2.Monat(Monat),
    TagName VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS dwh2.FilialStaat (
    FilialStaatID INT PRIMARY KEY,
    FilialStaatName VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS dwh2.FilialBundesland (
    FilialBundeslandID INT PRIMARY KEY,
    FilialBundeslandName VARCHAR(100),
    FilialStaatID INT REFERENCES dwh2.FilialStaat(FilialStaatID)
);

CREATE TABLE IF NOT EXISTS dwh2.FilialLandkreis (
    FilialLandkreisID INT PRIMARY KEY,
    FilialLandkreisName VARCHAR(100),
    FilialBundeslandID INT REFERENCES dwh2.FilialBundesland(FilialBundeslandID)
);

CREATE TABLE IF NOT EXISTS dwh2.Filialbezirk (
    FilialbezirkID INT PRIMARY KEY,
    FilialbezirkName VARCHAR(100),
    FilialLandkreisID INT REFERENCES dwh2.FilialLandkreis(FilialLandkreisID)
);

CREATE TABLE IF NOT EXISTS dwh2.FilialOberbezirk (
    FilialoberbezirkID INT PRIMARY KEY,
    FilialoberbezirkName VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS dwh2.Filiale (
    FilialeID INT PRIMARY KEY,
    FilialeName VARCHAR(100),
    FilialbezirkID INT REFERENCES dwh2.Filialbezirk(FilialbezirkID),
    FilialoberbezirkID INT REFERENCES dwh2.FilialOberbezirk(FilialoberbezirkID)
);

CREATE TABLE IF NOT EXISTS dwh2.Kassa (
    KassaID INT PRIMARY KEY,
    KassaName VARCHAR(100),
    FilialeID INT REFERENCES dwh2.Filiale(FilialeID)
);

CREATE TABLE IF NOT EXISTS dwh2.Kunden (
    Kunde INT PRIMARY KEY,
    WohnOrtDesKunden VARCHAR(100),
    LandkreisDesKunden VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS dwh2.Artikel (
    Artikel INT PRIMARY KEY,
    Artikelgruppe VARCHAR(100),
    ArtikelObergruppe VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS dwh2.Einkaeufe (
    Einkauf_ID SERIAL PRIMARY KEY,
    Kunde INT REFERENCES dwh2.Kunden(Kunde),
    Artikel INT REFERENCES dwh2.Artikel(Artikel),
    KassaID INT REFERENCES dwh2.Kassa(KassaID),
    Tag DATE REFERENCES dwh2.Tag(Tag),
    Menge INT,
    Verkaufspreis DECIMAL(10,2)
);
INSERT INTO dwh2.Jahr VALUES (2020, '2020');
INSERT INTO dwh2.Jahr VALUES (2021, '2021');
INSERT INTO dwh2.Jahr VALUES (2022, '2022');
INSERT INTO dwh2.Jahr VALUES (2023, '2023');
INSERT INTO dwh2.Jahr VALUES (2024, '2024');
INSERT INTO dwh2.Monat VALUES (1,  'Januar',    2023);
INSERT INTO dwh2.Monat VALUES (2,  'Februar',   2023);
INSERT INTO dwh2.Monat VALUES (3,  'März',      2022);
INSERT INTO dwh2.Monat VALUES (4,  'April',     2021);
INSERT INTO dwh2.Monat VALUES (5,  'Mai',       2020);
-- 3. Tabelle Woche – 5 Kalenderwochen
INSERT INTO dwh2.Woche VALUES (1, 'KW01');
INSERT INTO dwh2.Woche VALUES (2, 'KW02');
INSERT INTO dwh2.Woche VALUES (3, 'KW03');
INSERT INTO dwh2.Woche VALUES (4, 'KW04');
INSERT INTO dwh2.Woche VALUES (5, 'KW05');

-- Jahr, Monat, Woche, Tag
INSERT INTO dwh2.Tag VALUES
('2023-01-01', 1, 1, 'Tag_1'),
('2023-01-02', 1, 1, 'Tag_2'),
('2023-01-03', 1, 1, 'Tag_3'),
('2023-01-04', 1, 1, 'Tag_4'),
('2023-01-05', 1, 1, 'Tag_5');

-- Standorthierarchie
INSERT INTO dwh2.FilialStaat VALUES (1, 'Deutschland');
INSERT INTO dwh2.FilialBundesland VALUES (1, 'Niedersachsen', 1);
INSERT INTO dwh2.FilialLandkreis VALUES (1, 'Lüneburg', 1);
INSERT INTO dwh2.Filialbezirk VALUES (1, 'Nordbezirk', 1);
INSERT INTO dwh2.FilialOberbezirk VALUES (1, 'Nord-Verbund');
INSERT INTO dwh2.Filiale VALUES (1, 'Filiale Lüneburg', 1, 1);
INSERT INTO dwh2.Kassa VALUES (1, 'Kassa LG-1', 1);

-- Kunden
INSERT INTO dwh2.Kunden VALUES
(1, 'Lüneburg', 'LK Lüneburg'),
(2, 'Berlin', 'LK Berlin'),
(3, 'Hamburg', 'LK Hamburg'),
(4, 'Hannover', 'LK Hannover'),
(5, 'Kiel', 'LK Kiel');

-- Artikel
INSERT INTO dwh2.Artikel VALUES
(1, 'Sport', 'Outdoor'),
(2, 'Mode', 'Damen'),
(3, 'Technik', 'Smartphones'),
(4, 'Haus', 'Garten'),
(5, 'Bücher', 'Romane');

-- Einkäufe (2 Beispiele)
INSERT INTO dwh2.Einkaeufe (Kunde, Artikel, KassaID, Tag, Menge, Verkaufspreis) VALUES
(1, 1, 1, '2023-01-01', 2, 49.99),
(2, 2, 1, '2023-01-02', 1, 79.95);
