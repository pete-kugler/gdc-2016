CREATE TABLE [dbo].[CodeCoverageMeasuredFiles] (
    [id]       INT           IDENTITY (1, 1) NOT NULL,
    [Filename] VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_CodeCoverageMeasuredFiles] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_CodeCoverageMeasuredFiles] UNIQUE NONCLUSTERED ([Filename] ASC) WITH (FILLFACTOR = 40)
);

