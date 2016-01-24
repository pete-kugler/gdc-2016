CREATE TABLE [dbo].[TestRunParameterTypes] (
    [id]            INT           IDENTITY (1, 1) NOT NULL,
    [ParameterName] VARCHAR (50)  NOT NULL,
    [Description]   VARCHAR (250) NOT NULL,
    [ParameterType] VARCHAR (50)  NOT NULL,
    [IsRequired]    BIT           NOT NULL,
    CONSTRAINT [PK_TestRunParameterTypes] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_TestRunParameterTypes] UNIQUE NONCLUSTERED ([ParameterName] ASC, [Description] ASC, [ParameterType] ASC, [IsRequired] ASC) WITH (FILLFACTOR = 40)
);

