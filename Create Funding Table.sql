-- Create a new table called '[FundingReconciliation]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[FundingReconciliation]', 'U') IS NOT NULL
DROP TABLE [dbo].[FundingReconciliation]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[FundingReconciliation]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [LabId] INT NOT NULL FOREIGN KEY REFERENCES LabTable(LabId),
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