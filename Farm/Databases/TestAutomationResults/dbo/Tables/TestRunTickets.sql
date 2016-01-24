CREATE TABLE [dbo].[TestRunTickets] (
    [id]                INT            IDENTITY (1, 1) NOT NULL,
    [Title]             VARCHAR (1024) NOT NULL,
    [Link]              VARCHAR (250)  NOT NULL,
    [TestRunsDevkitsId] INT            NOT NULL,
    [ExternalTicketId]  INT            NOT NULL,
    [ExternalBucketId]  INT            NOT NULL,
    [Halt]              VARCHAR (1024) NOT NULL,
    [BugId]             INT            NULL,
    [TicketDate]        DATETIME       NULL,
    [LastBucketedBugId] INT            NULL,
    CONSTRAINT [PK_TestRunTickets] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_TestRunTickets_BucketedTestRunBugs] FOREIGN KEY ([LastBucketedBugId]) REFERENCES [dbo].[TestRunBugs] ([id]),
    CONSTRAINT [FK_TestRunTickets_TestRunBugs] FOREIGN KEY ([BugId]) REFERENCES [dbo].[TestRunBugs] ([id]),
    CONSTRAINT [FK_TestRunTickets_TestRunsDevkits] FOREIGN KEY ([TestRunsDevkitsId]) REFERENCES [dbo].[TestRunsDevkits] ([id]),
    CONSTRAINT [UX_TestRunTickets] UNIQUE NONCLUSTERED ([TestRunsDevkitsId] ASC, [ExternalTicketId] ASC) WITH (FILLFACTOR = 40)
);

