-- Lösche Dim_Time Tabelle
Drop TABLE DWH_NorthWind_B.dbo.Dim_Time ;
GO

-- Erstellen der Dim_Time Tabelle
CREATE TABLE DWH_NorthWind_B.dbo.Dim_Time (
    TimeID VARCHAR(8) PRIMARY KEY,
    Day INT,
    Month INT,
    Quarter INT,
    Year INT
);
GO
--- für full load
truncate  table DWH_NorthWind.dbo.Dim_Time

--- delta_load
delete DWH_NorthWind_B.dbo.Dim_Time where Year < 2015
delete DWH_NorthWind_B.dbo.Dim_Time where Year > 2027

-- Entfernen der Stored Procedure, falls sie existiert
IF OBJECT_ID('dbo.sp_FillDimTime', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_FillDimTime;
END
GO

select getdate()  -- Test für Format

go
-- Erstellen der Stored Procedure
CREATE or ALTER PROCEDURE dbo.sp_FillDimTime
    @Year INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @StartDate DATE;
    DECLARE @EndDate DATE;

    SET @StartDate = CONVERT(DATE, CONCAT(@Year, '0101'));
    SET @EndDate = CONVERT(DATE, CONCAT(@Year, '1231'));

    WHILE @StartDate <= @EndDate
    BEGIN
        INSERT INTO DWH_NorthWind_B.dbo.Dim_Time (TimeID, Day, Month, Quarter, Year)
        VALUES (
            CONVERT(VARCHAR(8), @StartDate, 112),
            DAY(@StartDate),
            MONTH(@StartDate),
            DATEPART(QUARTER, @StartDate),
            YEAR(@StartDate)
        );

        -- Zum nächsten Tag inkrementieren
        SET @StartDate = DATEADD(DAY, 1, @StartDate);
    END
END;
GO

EXEC dbo.sp_FillDimTime 2015
EXEC dbo.sp_FillDimTime 2016
EXEC dbo.sp_FillDimTime 2017
--- ...

EXEC dbo.sp_FillDimTime 2028

select * from DWH_NorthWind.dbo.Dim_Time  order by TimeID desc