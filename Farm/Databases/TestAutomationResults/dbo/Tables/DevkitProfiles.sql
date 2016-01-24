CREATE TABLE [dbo].[DevkitProfiles] (
    [id]          INT          IDENTITY (1, 1) NOT NULL,
    [ProfileName] VARCHAR (50) NOT NULL,
    [OfflineGUID] VARCHAR (50) NULL,
    [OnlineGuid]  VARCHAR (50) NULL,
    CONSTRAINT [PK_DevkitProfiles] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_DevkitProfiles] UNIQUE NONCLUSTERED ([ProfileName] ASC) WITH (FILLFACTOR = 40)
);

