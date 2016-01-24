CREATE TABLE [dbo].[OperatingSystems] (
    [id]              INT          IDENTITY (1, 1) NOT NULL,
    [Version]         VARCHAR (50) NOT NULL,
    [OperatingSystem] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_OperatingSystemVersions] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_OperatingSystems] UNIQUE NONCLUSTERED ([Version] ASC, [OperatingSystem] ASC) WITH (FILLFACTOR = 40)
);

