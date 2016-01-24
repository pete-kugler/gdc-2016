CREATE TABLE [dbo].[TestRunLoggingEvents] (
    [id]              BIGINT        IDENTITY (1, 1) NOT NULL,
    [TestRunId]       INT           NOT NULL,
    [DevkitId]        INT           NULL,
    [TimeStamp]       DATETIME      NOT NULL,
    [EventText]       VARCHAR (MAX) NOT NULL,
    [CategoryId]      INT           NOT NULL,
    [EventLogLevelId] INT           NOT NULL,
    CONSTRAINT [PK_TestRunLoggingEvents] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_TestRunLoggingEvents_Category] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[TestRunLoggingEventCategories] ([id]),
    CONSTRAINT [FK_TestRunLoggingEvents_Devkits] FOREIGN KEY ([DevkitId]) REFERENCES [dbo].[Devkits] ([id]),
    CONSTRAINT [FK_TestRunLoggingEvents_TestRunEventLogLevels] FOREIGN KEY ([EventLogLevelId]) REFERENCES [dbo].[TestRunEventLogLevels] ([id]),
    CONSTRAINT [FK_TestRunLoggingEvents_TestRuns] FOREIGN KEY ([TestRunId]) REFERENCES [dbo].[TestRuns] ([id])
);

