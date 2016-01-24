CREATE TABLE [dbo].[HostMachines] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [MachineName] VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_HostMachines] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_HostMachines] UNIQUE NONCLUSTERED ([MachineName] ASC) WITH (FILLFACTOR = 40)
);

