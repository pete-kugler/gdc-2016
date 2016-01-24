CREATE TABLE [dbo].[BuildFlavors] (
    [id]          INT          IDENTITY (1, 1) NOT NULL,
    [BuildFlavor] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_BuildFlavors] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_BuildFlavors] UNIQUE NONCLUSTERED ([BuildFlavor] ASC) WITH (FILLFACTOR = 40)
);

