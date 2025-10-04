-- Lösche Dim_Time Tabelle
Drop TABLE DWH_NorthWind.dbo.Dim_Time ;
GO

-- Erstellen der Dim_Time Tabelle
CREATE TABLE DWH_NorthWind.dbo.Dim_Time (
    TimeID VARCHAR(8) PRIMARY KEY,
    Day INT,
    Month INT,
    Quarter INT,
    Year INT
);
GO

-- Entfernen der Stored Procedure, falls sie existiert
IF OBJECT_ID('dbo.sp_FillDimTime', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.sp_FillDimTime;
END
GO

-- Erstellen der Stored Procedure
CREATE PROCEDURE dbo.sp_FillDimTime
    @Year INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @StartDate DATE;
    DECLARE @EndDate DATE;

    SET @StartDate = CONVERT(DATE, CONCAT(@Year, '-01-01'));
    SET @EndDate = CONVERT(DATE, CONCAT(@Year, '-12-31'));

    WHILE @StartDate <= @EndDate
    BEGIN
        INSERT INTO DWH_NorthWind.dbo.Dim_Time (TimeID, Day, Month, Quarter, Year)
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


EXEC dbo.sp_FillDimTime 2010
EXEC dbo.sp_FillDimTime 2011
EXEC dbo.sp_FillDimTime 2012
EXEC dbo.sp_FillDimTime 2013
EXEC dbo.sp_FillDimTime 2014
EXEC dbo.sp_FillDimTime 2015
EXEC dbo.sp_FillDimTime 2016
EXEC dbo.sp_FillDimTime 2017
EXEC dbo.sp_FillDimTime 2018
EXEC dbo.sp_FillDimTime 2019
EXEC dbo.sp_FillDimTime 2020
EXEC dbo.sp_FillDimTime 2021
EXEC dbo.sp_FillDimTime 2022
EXEC dbo.sp_FillDimTime 2023
EXEC dbo.sp_FillDimTime 2024
EXEC dbo.sp_FillDimTime 2025
EXEC dbo.sp_FillDimTime 2026
