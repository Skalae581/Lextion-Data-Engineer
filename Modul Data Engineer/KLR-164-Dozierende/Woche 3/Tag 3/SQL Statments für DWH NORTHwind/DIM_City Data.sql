--Erstellen der Dim_City Tabelle
CREATE TABLE DWH_NorthWind_B.dbo.Dim_City (
    CityID INT IDENTITY(1,1) PRIMARY KEY,
    City NVARCHAR(15),
    Region NVARCHAR(15),
    PostalCode NVARCHAR(10),
    Country NVARCHAR(15)
);


-- für ein Full-Load
truncate table DWH_NorthWind_B.dbo.Dim_City 
INSERT INTO DWH_NorthWind_B.dbo.Dim_City (City, Region, PostalCode, Country)
SELECT DISTINCT 
    City,
    Region,
    PostalCode,
    Country
FROM 
    NORTHWND.dbo.Customers
WHERE 
    City IS NOT NULL;

--	select * from  DWH_NorthWind.dbo.Dim_City order by City