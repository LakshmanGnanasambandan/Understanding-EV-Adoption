-- =========================================================
-- EV Consumer Analytics
-- Database Setup
-- =========================================================

IF DB_ID('EV_Adoption') IS NULL
BEGIN
    CREATE DATABASE EV_Adoption;
END;
GO

USE EV_Adoption;
GO
