--Erstellen und Befüllen der Dim_Produkte Tabelle mit      
drop table if exists DWH_NorthWind_B.dbo.Dim_Produkte
--- Nachteil kein PK definiert ist

--- darf Tabelel nicht existieren
SELECT 
    p.ProductID,
    p.ProductName,
    p.SupplierID,
    p.CategoryID,
    isnull(ltrim(rtrim(substring(c.CategoryName,1,25))), 'N/A') as CategoryName,
    p.QuantityPerUnit,
    p.UnitPrice,
    p.UnitsInStock,
    p.UnitsOnOrder,
    p.ReorderLevel,
    p.Discontinued
INTO 
    DWH_NorthWind_B.dbo.Dim_Produkte
FROM 
    NORTHWND.dbo.Products p
JOIN 
    NORTHWND.dbo.Categories c
ON 
    p.CategoryID = c.CategoryID;
