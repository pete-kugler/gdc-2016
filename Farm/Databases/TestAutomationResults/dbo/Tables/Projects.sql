CREATE TABLE [dbo].[Projects] (
    [id]          INT          IDENTITY (1, 1) NOT NULL,
    [ProjectName] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_Projects] UNIQUE NONCLUSTERED ([ProjectName] ASC) WITH (FILLFACTOR = 40)
);

