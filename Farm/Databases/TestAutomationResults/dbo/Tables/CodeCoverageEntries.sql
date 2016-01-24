CREATE TABLE [dbo].[CodeCoverageEntries] (
    [id]                    INT IDENTITY (1, 1) NOT NULL,
    [MeasuredFileId]        INT NOT NULL,
    [TotalHit]              INT NOT NULL,
    [Total]                 INT NOT NULL,
    [CodeCoverageResultsId] INT NOT NULL,
    CONSTRAINT [PK_CodeCoverageEntries] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_CodeCoverageEntries_CodeCoverageMeasuredFiles] FOREIGN KEY ([MeasuredFileId]) REFERENCES [dbo].[CodeCoverageMeasuredFiles] ([id]),
    CONSTRAINT [FK_CodeCoverageEntries_CodeCoverageResults] FOREIGN KEY ([CodeCoverageResultsId]) REFERENCES [dbo].[CodeCoverageResults] ([id]),
    CONSTRAINT [UX_CodeCoverageEntries] UNIQUE NONCLUSTERED ([MeasuredFileId] ASC, [CodeCoverageResultsId] ASC) WITH (FILLFACTOR = 40)
);

