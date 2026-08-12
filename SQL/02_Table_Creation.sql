-- =========================================================
-- EV Consumer Analytics
-- Table Creation
-- =========================================================

USE EV_Adoption;
GO

IF OBJECT_ID('dbo.EV_Adoption_Data', 'U') IS NULL
BEGIN

    CREATE TABLE dbo.EV_Adoption_Data
    (
        Buyer_ID NVARCHAR(50) NOT NULL PRIMARY KEY,
        Age TINYINT NOT NULL,
        Gender NVARCHAR(50) NOT NULL,
        Annual_Income_USD FLOAT NOT NULL,
        City_Type NVARCHAR(50) NOT NULL,
        Daily_Commute_km FLOAT NOT NULL,
        Number_of_Cars_Owned TINYINT NOT NULL,
        Current_Car_Type NVARCHAR(50) NOT NULL,
        Charging_Stations_Near_Home TINYINT NOT NULL,
        Charging_Stations_Near_Work TINYINT NOT NULL,
        Home_Charging_Possible BIT NOT NULL,
        Environmental_Concern_Level FLOAT NOT NULL,
        Subsidy_Available BIT NOT NULL,
        Range_Anxiety_Level NVARCHAR(50) NOT NULL,
        Will_Buy_EV BIT NOT NULL,
        Income_Group NVARCHAR(50) NOT NULL,
        Age_Group NVARCHAR(50) NOT NULL,
        Commute_Group NVARCHAR(50) NOT NULL,
        Home_Charging_Group NVARCHAR(50) NOT NULL,
        Work_Charging_Group NVARCHAR(50) NOT NULL
    );

END;
GO
