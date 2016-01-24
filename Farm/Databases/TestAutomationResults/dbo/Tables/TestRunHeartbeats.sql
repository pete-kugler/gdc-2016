CREATE TABLE [dbo].[TestRunHeartbeats] (
    [id]                INT            IDENTITY (1, 1) NOT NULL,
    [TestRunsDevkitsId] INT            NOT NULL,
    [Modified]          DATETIME       NOT NULL,
    [Heartbeat]         VARCHAR (1024) NULL,
    CONSTRAINT [PK_TestRunHeartbeats] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_TestRunHeartbeats_TestRunsDevkits] FOREIGN KEY ([TestRunsDevkitsId]) REFERENCES [dbo].[TestRunsDevkits] ([id])
);

