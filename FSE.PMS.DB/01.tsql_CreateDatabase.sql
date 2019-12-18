DECLARE @dbname NVARCHAR(128)
SET @dbname = N'ProjectManager'

IF (EXISTS (SELECT name
FROM master.dbo.sysdatabases 
WHERE ('[' + name + ']' = @dbname 
OR name = @dbname)))

	PRINT 'ProjectManager database already exists';
ELSE
	USE [master];
	CREATE DATABASE ProjectManager;
	PRINT 'ProjectManager database created successfully';