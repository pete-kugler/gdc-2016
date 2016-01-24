CREATE TABLE [dbo].[DevkitTypes] (
    [id]         INT          IDENTITY (1, 1) NOT NULL,
    [DevkitType] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_DevkitTypes] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40)
);

