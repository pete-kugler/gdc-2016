CREATE TABLE [dbo].[DevkitPackageTypes] (
    [id]          INT          IDENTITY (1, 1) NOT NULL,
    [PackageType] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_DevkitPackageTypes] PRIMARY KEY CLUSTERED ([id] ASC)
);

