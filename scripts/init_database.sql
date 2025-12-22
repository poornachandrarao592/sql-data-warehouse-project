/*
===================================================================================
Create Database and Schemas
===================================================================================
Script Purpose:
  This script creates a new database named 'datawarehouse' after checking if it already exists .
  If the database is already exists , it is dropped and recreated. Aditionally , the script sets up three schemas with in the database:'bronze','silver','gold'.

WARNING:
  Running this script will drop the entire database 'datawarehouse' if it exists.
  All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this scripts.
*/


use master;

--Drop and recretae the 'Datawarehouse' database
if exists(select 1 from sys.databases where name = 'datawarehouse')
begin
	alter database datawarehouse set single_user with rollback immediate;
	drop database datawarehouse;
end;

GO

--Create new database 'Datawarehouse'
create database datawarehouse;

use datawarehouse;

GO

--Create Schemas
create schema bronze;
GO

create schema silver;
GO

create schema gold;
GO
