CREATE TABLE [dbo].[TestRunPriorities] (
    [id]            INT IDENTITY (1, 1) NOT NULL,
    [PriorityValue] INT NOT NULL,
    CONSTRAINT [PK_TestRunPriorities] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_TestRunPriorities] UNIQUE NONCLUSTERED ([PriorityValue] ASC) WITH (FILLFACTOR = 40)
);

