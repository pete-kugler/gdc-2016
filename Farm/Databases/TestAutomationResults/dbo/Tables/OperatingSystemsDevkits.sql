CREATE TABLE [dbo].[OperatingSystemsDevkits] (
    [id]                INT      IDENTITY (1, 1) NOT NULL,
    [OperatingSystemId] INT      NOT NULL,
    [DevkitId]          INT      NOT NULL,
    [LastUpdated]       DATETIME NOT NULL,
    CONSTRAINT [PK_OperatingSystemsDevkits] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_OperatingSystemsDevkits_Devkits] FOREIGN KEY ([DevkitId]) REFERENCES [dbo].[Devkits] ([id]),
    CONSTRAINT [FK_OperatingSystemsDevkits_OperatingSystems] FOREIGN KEY ([OperatingSystemId]) REFERENCES [dbo].[OperatingSystems] ([id]),
    CONSTRAINT [UX_OperatingSystemsDevkits] UNIQUE NONCLUSTERED ([OperatingSystemId] ASC, [DevkitId] ASC) WITH (FILLFACTOR = 40)
);

