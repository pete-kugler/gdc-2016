CREATE TABLE [dbo].[TestRunStates] (
    [id]        INT          IDENTITY (1, 1) NOT NULL,
    [TestState] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_TestPassStates] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_TestStates] UNIQUE NONCLUSTERED ([TestState] ASC) WITH (FILLFACTOR = 40)
);

