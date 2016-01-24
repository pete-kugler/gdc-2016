CREATE TABLE [dbo].[TestRunFailures] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [Message]    VARCHAR (250) NOT NULL,
    [StackTrace] VARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_TestRunFailures] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40)
);

