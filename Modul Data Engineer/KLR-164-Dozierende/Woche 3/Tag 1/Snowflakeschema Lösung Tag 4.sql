create schema dwh2
go

drop table if exists dwh2.Kunden
create table dwh2.Kunden
(
	Kunde bigint PRIMARY KEY IDENTITY(1,1) NOT NULL,
	WOhnOrtdesKunden varchar(100) NOT NULL,
	LandkreiusdesKunden varchar(100) NOT NULL
)

CREATE TABLE [dwh2].[Artikel](
	[Artikel] [bigint] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Artikelgruppe] [varchar](5) NOT NULL,
	[ArtikelObergruppe] [varchar](5) NOT NULL,
) 

drop table if exists dwh2.Jahr
create table dwh2.Jahr  --- dwh2.D_Zeit
(
	Jahr varchar(4) PRIMARY KEY NOT NULL,  
	JahrName varchar(100)  ---JJJJ
)

drop table if exists dwh2.Monat
create table dwh2.Monat  --- dwh2.D_Zeit
(
	Monat varchar(6) PRIMARY KEY NOT NULL, 
	MonatsName varchar(100), --JJJJMM
	Jahr varchar(4) NOT NULL , 
	FOREIGN KEY (Jahr) REFERENCES dwh2.Jahr(Jahr),---JJJJ
)

drop table if exists dwh2.Woche; 
create table dwh2.Woche  --- dwh1.D_Zeit
(

	Woche varchar(6) PRIMARY KEY NOT NULL, --- JJJJWW
	WocheName varchar(100) NOT NULL ---JJJJ
)

create table dwh2.Tag  --- dwh1.D_Zeit
(
	Tag char(8) PRIMARY KEY NOT NULL ,--JJJJMMTT
	Woche varchar(6) NOT NULL, --- JJJJWW
	Monat varchar(6) NOT NULL, --JJJJMM
	TagName varchar(100) NOT NULL, 
	FOREIGN KEY (Woche) REFERENCES dwh2.Woche(Woche), 
	FOREIGN KEY (Monat) REFERENCES dwh2.Monat(Monat),---JJJJ
)

drop table if exists dwh2.FilialBundesland
drop table if exists dwh2.FilialStaat
drop table if exists dwh2.FilialOberbezirk

create table dwh2.FilialStaat
(
	FilialStaatID bigint PRIMARY KEY IDENTITY (1,1) NOT NULL,
	FilalStaatName varchar(100) NOT NULL
)


create table dwh2.FilialOberbezirk
(
	FilialoberbezirkID bigint PRIMARY KEY IDENTITY (1,1) NOT NULL,
	FilialoberbezirkName varchar(100) NOT NULL ,
)


create table dwh2.FilialBundesland
(
	FilialBundeslandID bigint PRIMARY KEY IDENTITY (1,1) NOT NULL,
	FilialBundeslandName varchar(100) NOT NULL,
	FilialStaatID bigint NOT NULL,
	FOREIGN KEY (FilialStaatID) REFERENCES dwh2.FilialStaat(FilialStaatID),
)

drop table if exists dwh2.Filailbezirk
create table dwh2.Filialbezirk
(
	FilialbezirkId bigint PRIMARY KEY IDENTITY (1,1) NOT NULL, 
	FilialbezirkNAME varchar(100) NOT NULL,
	FilialoberbezirkID bigint NOT NULL ,
	FilialBundeslandID bigint NOT NULL,
	FOREIGN KEY (FilialoberbezirkID) REFERENCES dwh2.Filialoberbezirk(FilialoberbezirkID),
	FOREIGN KEY (FilialBundeslandID) REFERENCES dwh2.FilialBundesland(FilialBundeslandID)
)


drop table if exists dwh2.FilialLandkreis
create table dwh2.FilialLandkreis
(
	FilialLandkreisID bigint PRIMARY KEY IDENTITY(1,2) NOT NULL,
	FilialLandkreis varchar(100) NOT NULL,
	FilialBundeslandId bigint NOT NULL
	FOREIGN KEY (FilialBundeslandID) REFERENCES dwh2.FilialBundesland(FilialBundeslandID)
)


create table dwh2.Filiale
(
	FilailId bigint PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Filiale varchar(100) NOT NULL,
	FilialbezirkId bigint NOT NULL,
	FilialLandkreisId bigint NOT NULL,
	FOREIGN KEY (FilialbezirkId) REFERENCES dwh2.Filialbezirk(FilialbezirkId),
	FOREIGN KEY (FilialLandkreisId) REFERENCES dwh2.FilialLandkreis(FilialLandkreisId)

)


drop table if exists  dwh2.Kassa
create table dwh2.Kassa
(
	KassaId bigint PRIMARY KEY IDENTITY(1,1) NOT NULL,
	KassaName varchar(100) NOT NULL,
	FilialeId bigint NOT NULL,
	FOREIGN KEY (FilialeId) REFERENCES dwh2.Filiale(FilailId)
)



create table dwh2.F_Einkaeufe
(
	Kunde bigint NOT NULL,
	[Artikel] [bigint] NOT NULL,
	KassaId bigint NOT NULL,
	Tag char(8) NOT NULL,
	Menge integer NOT NULL default(1) check(Menge > 0),
	Verkaufspreis decimal(8,2) default(10),
	FOREIGN KEY (Kunde) REFERENCES dwh2.Kunden(Kunde),
	FOREIGN KEY (Artikel) REFERENCES dwh2.Artikel(Artikel),
	FOREIGN KEY (KassaId) REFERENCES dwh2.Kassa(KassaId),
	FOREIGN KEY (Tag) REFERENCES dwh2.Tag(Tag),
	PRIMARY KEY (Kunde, Artikel, KassaId, Tag)
	--PRIMARY KEY (Tag, Kunde, Artikel, Kassa, )
)