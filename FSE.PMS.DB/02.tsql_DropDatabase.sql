DECLARE @dbname NVARCHAR(128)
SET @dbname = N'ProjectManager'

IF (EXISTS (SELECT name
FROM master.dbo.sysdatabases 
WHERE ('[' + name + ']' = @dbname 
OR name = @dbname)))

PRINT 'ProjectManager database exists, dropping database';

USE [master];
DROP DATABASE ProjectManager;
GO

PRINT 'Database dropped successfully';