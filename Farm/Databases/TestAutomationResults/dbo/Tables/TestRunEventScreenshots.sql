CREATE TABLE [dbo].[TestRunEventScreenshots] (
    [id]                    INT             IDENTITY (1, 1) NOT NULL,
    [Screenshot]            VARBINARY (MAX) NOT NULL,
    [TestRunLoggingEventId] BIGINT          NOT NULL,
    CONSTRAINT [PK_TestRunEventScreenshots] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_TestRunEventScreenshots_TestRunLoggingEventId] FOREIGN KEY ([TestRunLoggingEventId]) REFERENCES [dbo].[TestRunLoggingEvents] ([id])
);

