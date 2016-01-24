CREATE TABLE [dbo].[Builds] (
    [id]           INT          IDENTITY (1, 1) NOT NULL,
    [BuildVersion] VARCHAR (50) NOT NULL,
    [BranchId]     INT          NOT NULL,
    CONSTRAINT [PK_Builds] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_Builds_Branches] FOREIGN KEY ([BranchId]) REFERENCES [dbo].[ProjectBranches] ([id])
);

