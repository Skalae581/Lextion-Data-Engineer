-- dbo.usp_dwh1_Kunden
CREATE or ALTER PROCEDURE usp_dwh1_Kunden
AS
BEGIN

	truncate table DWH_NorthWind_B.dwh1.Kunden

	INSERT INTO DWH_NorthWind_B.dwh1.Kunden (WOhnOrtdesKunden, LandkreisdesKunden)
	SELECT DISTINCT 
		City,
		concat(Region,'_', Postalcode) as Region
	FROM 
		NORTHWND.dbo.Customers
	WHERE 
		City IS NOT NULL;

END
go
--dbo.usp_dwh1_Artikel

CREATE or ALTER PROCEDURE usp_dwh1_Artikel
AS
BEGIN

	truncate table  DWH_NorthWind_B.[dwh1].[Artikel]

	INSERT INTO DWH_NorthWind_B.[dwh1].[Artikel] ([Artikelgruppe], [ArtikelObergruppe])
	SELECT distinct 
		isnull(ltrim(rtrim(substring(c.CategoryName,1,25))), 'N/A') as Artikelgruppe,
		isnull(ltrim(rtrim(substring(s.CompanyName,1,40))), 'N/A') as Artikelobergruppe
	--INTO 
	--    DWH_NorthWind_B.dwh1.Artikel
	FROM 
		NORTHWND.dbo.Products p
	JOIN 
		NORTHWND.dbo.Categories c
	ON 
		p.CategoryID = c.CategoryID    
	INNER JOIN NORTHWND.dbo.Suppliers s 
	ON
		p.SupplierId = s.SupplierId ;

END
go
--dbo.usp_dwh1_Kassa
--

CREATE or ALTER PROCEDURE usp_dwh1_Kassa
AS
BEGIN
	truncate table DWH_NorthWind_B.dwh1.Kassa 


	---- Daten enfügen
	INSERT INTO DWH_NORTHWind_B.dwh1.Kassa(Kassa,
		Filiale ,
		Filialbezirk,
		Filialoberbezirk ,
		FilialLandkreis,
		FilialBundesland,
		FilialStaat)
	SELECT Kassa,
		Filiale ,
		Filialbezirk,
		Filialoberbezirk ,
		FilialLandkreis,
		FilialBundesland,
		FilialStaat 
	FROM NORTHWND.dbo.KAssa
END
go
--dbo.usp_dwh1_Zeit

CREATE or ALTER PROCEDURE dbo.sp_FillZeit
    @Year INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @StartDate DATE;
    DECLARE @EndDate DATE;

    SET @StartDate = CONVERT(DATE, CONCAT(@Year, '-01-01'));
    SET @EndDate = CONVERT(DATE, CONCAT(@Year, '-12-31'));

	delete from DWH_NorthWind_B.dwh1.Zeit where Tag >= @StartDate and Tag <= @EndDate

    WHILE @StartDate <= @EndDate
    BEGIN
        INSERT INTO DWH_NorthWind_B.dwh1.Zeit (Tag, Woche, Monat, Year)
        VALUES (
            CONVERT(VARCHAR(8), @StartDate, 112),
            DATEPART(WEEK, @StartDate),
            MONTH(@StartDate),
            YEAR(@StartDate)
        );

        -- Zum nächsten Tag inkrementieren
        SET @StartDate = DATEADD(DAY, 1, @StartDate);
    END
END;
GO


--fuer laden der Faktentabelle
--control_table : Last_loading_Date datetime
CREATE TABLE dbo.control_table (Last_loading_Date datetime, FactTableName varchar(100))
INSERT INTO dbo.control_table (Last_loading_Date, FactTableName)
VALUES ('19000101', 'F_Einkaeufe')

--- anlegen fact-tabelle

create table DWH_NorthWind_B.dwh1.F_Einkaeufe
(
	Kunde bigint NOT NULL,
	[Artikel] [bigint] NOT NULL,
	Kassa bigint NOT NULL,
	Tag varchar(8) NOT NULL,
	Menge integer NOT NULL default(1) check(Menge > 0),
	Verkaufspreis decimal(8,2) default(10),
	FOREIGN KEY (Kunde) REFERENCES DWH_NorthWind_B.dwh1.Kunden(Kunde),
	FOREIGN KEY (Artikel) REFERENCES DWH_NorthWind_B.dwh1.Artikel(Artikel),
	FOREIGN KEY (Kassa) REFERENCES DWH_NorthWind_B.dwh1.Kassa(Kassa),
	FOREIGN KEY (Tag) REFERENCES DWH_NorthWind_B.dwh1.Zeit(Tag),
	PRIMARY KEY (Kunde, Artikel, Kassa, Tag)
	--PRIMARY KEY (Tag, Kunde, Artikel, Kassa, )
)
go
--anlegen der usp für Fakten

CREATE or ALTER PROCEDURE dbo.usp_fact_loading_F_Einkaufe
    --@StartDate DateTime 
AS
BEGIN
	declare @startdate datetime
	select @startdate = Last_loading_Date from dbo.control_table where FactTableName = 'F_Einkaeufe'

	declare @loading_date datetime
	SET @loading_date = getdate()

	--- delete aktuelle Tage
	 delete from DWH_NorthWind_B.dwh1.F_Einkaeufe
		where Tag >= CONVERT(VARCHAR(8),@startdate, 112) and Tag <= CONVERT(VARCHAR(8),@loading_date, 112) 

	INSERT INTO DWH_NorthWind_B.dwh1.F_Einkaeufe(Kunde ,Artikel, Kassa, Tag, Menge, Verkaufspreis)
	SELECT
		(select  Kunde 
			from DWH_NorthWind_B.dwh1.Kunden dwh 
			where 
				dwh.WOhnOrtdesKunden =  cu.City 
				and dwh.LandkreisdesKunden = concat(cu.Region,'_', cu.Postalcode) 
	
		)as Kunde,
		(select  Artikel 
			from DWH_NorthWind_B.dwh1.Artikel dwh 
			where 
				dwh.Artikelgruppe =  isnull(ltrim(rtrim(substring(c.CategoryName,1,25))), 'N/A')
				and dwh.Artikelobergruppe = isnull(ltrim(rtrim(substring(s.CompanyName,1,40))), 'N/A') 
	
		)as Artikel,
		o.Kassa,
		CONVERT(VARCHAR(8), o.OrderDate, 112) as Tag,
		Min(od.UnitPrice)AS Verkaufspreis,
		Sum(od.Quantity) as Menge
	FROM 
		dbo.Orders o
	JOIN 
		dbo.[Order Details] od ON o.OrderID = od.OrderID
	JOIN 
		dbo.Customers cu ON o.CustomerID = cu.CustomerID
	JOIN 
		dbo.Products p ON p.ProductID = od.ProductID
	JOIN 
		NORTHWND.dbo.Categories c
	ON 
		p.CategoryID = c.CategoryID    
	INNER JOIN NORTHWND.dbo.Suppliers s 
	ON
		p.SupplierId = s.SupplierId 
	WHERE CONVERT(VARCHAR(8),o.orderdate, 112) >= CONVERT(VARCHAR(8),@startdate, 112) and CONVERT(VARCHAR(8),o.orderdate, 112) <= CONVERT(VARCHAR(8),@loading_date, 112) 
	Group by 
		cu.[City],
		concat(cu.Region,'_', cu.Postalcode) ,
		isnull(ltrim(rtrim(substring(c.CategoryName,1,25))), 'N/A') ,
		isnull(ltrim(rtrim(substring(s.CompanyName,1,40))), 'N/A') ,
		CONVERT(VARCHAR(8), o.OrderDate, 112) ,
		o.Kassa

	Update dbo.control_table set Last_loading_Date = @loading_date where FactTableName = 'F_Einkaeufe'

END
go



--------------------------
--ausführen / testen
--
exec dbo.usp_dwh1_Kunden
exec dbo.usp_dwh1_Artikel
exec dbo.usp_dwh1_Kassa
EXEC dbo.sp_FillZeit 2027
EXEC dbo.sp_FillZeit 1996
EXEC dbo.sp_FillZeit 1997
EXEC dbo.sp_FillZeit 1998
---
EXEC dbo.usp_fact_loading_F_Einkaufe --@startdate


-- checking
select * from dbo.control_table 
select * from DWH_NorthWind_B.dwh1.F_Einkaeufe
--- retoursetzen for test
Update dbo.control_table set Last_loading_Date = '19000101' where FactTableName = 'F_Einkaeufe'