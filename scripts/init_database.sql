/*

============================
Create Database and Schemas
===========================

Script Purpose:
          This script creates a new database named 'Datawarehouse' after checking if it already exists. 
          If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
          within the database: 'bronze', 'silver', and 'gold'.


WARNING:
    Running this script will drop the entire 'Datawarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.

*/



USE master;

-- check wheather the data base exixts or not --
IF EXISTS(SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
  BEGIN
      ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
      DROP DATABASE DataWarehouse;
END;
GO
--create the 'Datawarehouse' database
create database DataWarehouse;
GO
  
USE DataWarehouse;
GO 

--Create Schemas
create schema bronze;
GO
create schema silver;
GO
create schema gold;
GO
