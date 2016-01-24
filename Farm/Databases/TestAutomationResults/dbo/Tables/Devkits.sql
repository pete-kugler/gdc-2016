CREATE TABLE [dbo].[Devkits] (
    [id]                INT           IDENTITY (1, 1) NOT NULL,
    [DevkitName]        VARCHAR (250) NOT NULL,
    [TelnetPort]        INT           NOT NULL,
    [RemoteControlPort] INT           NOT NULL,
    [DevkitTypeId]      INT           NOT NULL,
    CONSTRAINT [PK_Devkits] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [FK_Devkits_DevkitTypes] FOREIGN KEY ([DevkitTypeId]) REFERENCES [dbo].[DevkitTypes] ([id]),
    CONSTRAINT [UX_Devkits] UNIQUE NONCLUSTERED ([DevkitName] ASC, [TelnetPort] ASC, [RemoteControlPort] ASC, [DevkitTypeId] ASC) WITH (FILLFACTOR = 40)
);

