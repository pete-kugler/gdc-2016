CREATE TABLE [dbo].[TestRunsDevkits] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [TestRunId]           INT           NOT NULL,
    [DevkitId]            INT           NOT NULL,
    [DevkitStateId]       INT           NOT NULL,
    [DevkitPackageTypeId] INT           NULL,
    [GameSessionId]       VARCHAR (128) NULL,
    CONSTRAINT [PK_TestRunsDevkits] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_TestRunsDevkits_DevkitPackageTypes] FOREIGN KEY ([DevkitPackageTypeId]) REFERENCES [dbo].[DevkitPackageTypes] ([id]),
    CONSTRAINT [FK_TestRunsDevkits_Devkits] FOREIGN KEY ([DevkitId]) REFERENCES [dbo].[Devkits] ([id]),
    CONSTRAINT [FK_TestRunsDevkits_DevkitStates] FOREIGN KEY ([DevkitStateId]) REFERENCES [dbo].[DevkitStates] ([id]),
    CONSTRAINT [FK_TestRunsDevkits_TestRuns] FOREIGN KEY ([TestRunId]) REFERENCES [dbo].[TestRuns] ([id]),
    CONSTRAINT [UX_TestRunsDevkits] UNIQUE NONCLUSTERED ([TestRunId] ASC, [DevkitId] ASC) WITH (FILLFACTOR = 40)
);

