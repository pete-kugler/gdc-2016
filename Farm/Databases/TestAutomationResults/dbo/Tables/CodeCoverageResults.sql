CREATE TABLE [dbo].[CodeCoverageResults] (
    [id]                   INT           IDENTITY (1, 1) NOT NULL,
    [TestPassSessionId]    INT           NOT NULL,
    [CodeCoverageFilename] VARCHAR (250) NOT NULL,
    [OutputPath]           VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_CodeCoverageResults] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_CodeCoverageResults_TestPassSessions] FOREIGN KEY ([TestPassSessionId]) REFERENCES [dbo].[TestPassSessions] ([id]),
    CONSTRAINT [UX_CodeCoverageResults] UNIQUE NONCLUSTERED ([TestPassSessionId] ASC, [CodeCoverageFilename] ASC) WITH (FILLFACTOR = 40)
);

