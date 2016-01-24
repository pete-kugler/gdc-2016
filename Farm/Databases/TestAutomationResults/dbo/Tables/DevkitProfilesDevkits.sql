CREATE TABLE [dbo].[DevkitProfilesDevkits] (
    [id]              INT      IDENTITY (1, 1) NOT NULL,
    [DevkitProfileId] INT      NOT NULL,
    [DevkitId]        INT      NOT NULL,
    [LastUpdated]     DATETIME NOT NULL,
    CONSTRAINT [PK_DevkitProfilesDevkits] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_DevkitProfilesDevkits_DevkitProfiles] FOREIGN KEY ([DevkitProfileId]) REFERENCES [dbo].[DevkitProfiles] ([id]),
    CONSTRAINT [FK_DevkitProfilesDevkits_Devkits] FOREIGN KEY ([DevkitId]) REFERENCES [dbo].[Devkits] ([id]),
    CONSTRAINT [UX_DevkitProfilesDevkits] UNIQUE NONCLUSTERED ([DevkitProfileId] ASC, [DevkitId] ASC) WITH (FILLFACTOR = 40)
);

