CREATE TABLE [dbo].[TestRunParameters] (
    [id]              INT           IDENTITY (1, 1) NOT NULL,
    [ParameterValue]  VARCHAR (500) NOT NULL,
    [ParameterTypeId] INT           NOT NULL,
    [TestRunId]       INT           NOT NULL,
    CONSTRAINT [PK_TestRunParameters] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_TestRunParameters_TestRunParameterTypes] FOREIGN KEY ([ParameterTypeId]) REFERENCES [dbo].[TestRunParameterTypes] ([id]),
    CONSTRAINT [FK_TestRunParameters_TestRuns] FOREIGN KEY ([TestRunId]) REFERENCES [dbo].[TestRuns] ([id]),
    CONSTRAINT [UX_TestRunParameters] UNIQUE NONCLUSTERED ([ParameterValue] ASC, [ParameterTypeId] ASC, [TestRunId] ASC) WITH (FILLFACTOR = 40)
);

