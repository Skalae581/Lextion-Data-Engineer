CREATE DATABASE DWH_NorthWind_A  --- DWH ROLAP 

use DWH_NORTHWIND_A

--- DIM_PRODUCT - lt XLS Mapping Bsp 2
--- DIM_CITY - lt XLS Mapping Bsp 2  
--- DIM_TIME - lt XLS Mapping Bsp 2
--- FACT_ORDER -  lt XLS Mapping Bsp 2


use NORTHWND
--- Daten Befüllung mittel "ETL" - stored procedure 
-- nach XLS-Sheet Bsp 2

--- Dim_City -- select - lt XLS Mapping Bsp 2
--- Dim_PRODUCT -- select - lt XLS Mapping Bsp 2
--- Dim_Time -- select - lt XLS Mapping Bsp 2
--- Dim_Fact -- select - lt XLS Mapping Bsp 2




--- Template für STored Procedure 
-- Erstellen der Stored Procedure
CREATE or ALTER PROCEDURE dbo.sp_FillDim...
    -- per Bedarf Parameter
AS
BEGIN
    SET NOCOUNT ON;




END  