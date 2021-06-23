-- Create a new table called '[Funding Reconciliation]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Funding Reconciliation]', 'U') IS NOT NULL
DROP TABLE [dbo].[Funding Reconciliation]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Funding Reconciliation]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [Laboratory] NVARCHAR(150) NOT NULL,
    [Month] DATE NOT NULL,
    [Service] NVARCHAR(150) NOT NULL,
    [ActualVolumes] INT NOT NULL,
    [ResubmittedVolumes] INT NOT NULL,
    [Change] INT NOT NULL,
    [Justification] NVARCHAR(500),
    [Created] DATETIME NOT NULL
    -- Specify more columns here
);
GO