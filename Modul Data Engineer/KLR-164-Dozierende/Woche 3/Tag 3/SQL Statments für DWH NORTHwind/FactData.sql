USE NORTHWND;
GO

-- Entfernen der View, falls sie existiert
IF OBJECT_ID('dbo.vFactOrderSource', 'V') IS NOT NULL
BEGIN
    DROP VIEW dbo.vFactOrderSource;
END
GO

-- Erstellen der View
CREATE or ALTER  VIEW dbo.vFactOrderSource AS
SELECT 
    cu.[City],
    cu.[Region],
    cu.[PostalCode],
    cu.[Country],
    od.ProductID,
	---- CategoryInformation
    CONVERT(VARCHAR(8), o.OrderDate, 112) AS TimeID,
    Sum(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS Revenue,
    Sum(od.Quantity) as Quantity
FROM 
    dbo.Orders o
JOIN 
    dbo.[Order Details] od ON o.OrderID = od.OrderID
JOIN 
    dbo.Customers cu ON o.CustomerID = cu.CustomerID
--JOIN 
--    dbo.Products p ON p.ProductID = od.ProductID
Group by 
    cu.[City],
    cu.[Region],
    cu.[PostalCode],
    cu.[Country],
    od.ProductID,
 CONVERT(VARCHAR(8), o.OrderDate, 112)
GO
select * from  vFactOrderSource


---- select für DHW-Fact
Select 
(select  CityID 
	from DWH_NorthWind.dbo.Dim_City dwh 
	where 
		dwh.City =  s.city 
		and dwh.Country = s.country 
		and isnull(dwh.Region, 'N/A') = isnull(s.Region, 'N/A') 
		and dwh.postalcode = s.PostalCode 
)as CityId,  -- LookUp auf Dim_City
ProductId, TimeId, Revenue, Quantity from vFactOrderSource s;


-- mit JOin
Select 
dwh.cityId as CityId,  -- LookUp auf Dim_City
ProductId, TimeId, Revenue, Quantity 
from vFactOrderSource s
inner join DWH_NorthWind.dbo.Dim_City dwh 
	ON 		dwh.City =  s.city 
		and dwh.Country = s.country 
		and isnull(dwh.Region, 'N/A') = isnull(s.Region, 'N/A') 
		and dwh.postalcode = s.PostalCode ;
