-- Create a new table called '[LabTable]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[LabTable]', 'U') IS NOT NULL
DROP TABLE [dbo].[LabTable]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[LabTable]
(
    [LabId] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [Laboratory] NVARCHAR(150) NOT NULL,
    [LabSimpleNamePHO] NVARCHAR(150) NOT NULL,
    [LabSimpleNameAffiliate] NVARCHAR(150) NOT NULL,
    [Region] NVARCHAR(100) NOT NULL,
    [Sector] NVARCHAR(100) NOT NULL,
    [NetworkAffiliation] NVARCHAR(150)
    -- Specify more columns here
);
GO