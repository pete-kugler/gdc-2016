CREATE TABLE [dbo].[HostMachineStates] (
    [id]           INT          IDENTITY (1, 1) NOT NULL,
    [MachineState] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_HostMachineStates] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_HostMachineStates] UNIQUE NONCLUSTERED ([MachineState] ASC) WITH (FILLFACTOR = 40)
);

