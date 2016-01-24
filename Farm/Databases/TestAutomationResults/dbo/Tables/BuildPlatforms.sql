CREATE TABLE [dbo].[BuildPlatforms] (
    [id]            INT          IDENTITY (1, 1) NOT NULL,
    [BuildPlatform] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_BuildPlatforms] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_Platforms] UNIQUE NONCLUSTERED ([BuildPlatform] ASC) WITH (FILLFACTOR = 40)
);

