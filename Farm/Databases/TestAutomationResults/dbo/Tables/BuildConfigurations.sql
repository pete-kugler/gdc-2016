CREATE TABLE [dbo].[BuildConfigurations] (
    [id]              INT          IDENTITY (1, 1) NOT NULL,
    [BuildFlavorId]   INT          NOT NULL,
    [BuildPlatformId] INT          NOT NULL,
    [ExecutableName]  VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_BuildConfigurations] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_BuildConfigurations_BuildFlavors] FOREIGN KEY ([BuildFlavorId]) REFERENCES [dbo].[BuildFlavors] ([id]),
    CONSTRAINT [FK_BuildConfigurations_BuildPlatforms] FOREIGN KEY ([BuildPlatformId]) REFERENCES [dbo].[BuildPlatforms] ([id]),
    CONSTRAINT [UX_BuildConfigurations] UNIQUE NONCLUSTERED ([BuildFlavorId] ASC, [BuildPlatformId] ASC, [ExecutableName] ASC) WITH (FILLFACTOR = 40)
);

