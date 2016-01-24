CREATE TABLE [dbo].[TestRunEventLogLevels] (
    [id]       INT          NOT NULL,
    [LogLevel] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_TestRunEventLogLevels] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_TestRunEventLogLevels] UNIQUE NONCLUSTERED ([LogLevel] ASC) WITH (FILLFACTOR = 40)
);

