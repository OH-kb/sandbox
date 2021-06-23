CREATE VIEW [Resubmitted Volumes] AS
SELECT l.Laboratory, f.Month, f.Service, f.ResubmittedVolumes, f.Justification FROM LabTable l, [FundingReconciliation] f
WHERE l.LabId = f.LabId
GO