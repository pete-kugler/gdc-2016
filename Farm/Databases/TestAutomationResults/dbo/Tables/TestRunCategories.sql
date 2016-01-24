CREATE TABLE [dbo].[TestRunCategories] (
    [id]           INT          IDENTITY (1, 1) NOT NULL,
    [TestCategory] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_TestRunCategories] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_TestRunCategories] UNIQUE NONCLUSTERED ([TestCategory] ASC) WITH (FILLFACTOR = 40)
);

