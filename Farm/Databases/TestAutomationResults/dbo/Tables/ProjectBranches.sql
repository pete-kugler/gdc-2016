CREATE TABLE [dbo].[ProjectBranches] (
    [id]         INT          IDENTITY (1, 1) NOT NULL,
    [BranchName] VARCHAR (50) NOT NULL,
    [ProjectId]  INT          NOT NULL,
    CONSTRAINT [PK_Branches] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_Branches_Projects] FOREIGN KEY ([ProjectId]) REFERENCES [dbo].[Projects] ([id]),
    CONSTRAINT [UX_ProjectBranches] UNIQUE NONCLUSTERED ([BranchName] ASC, [ProjectId] ASC) WITH (FILLFACTOR = 40)
);

