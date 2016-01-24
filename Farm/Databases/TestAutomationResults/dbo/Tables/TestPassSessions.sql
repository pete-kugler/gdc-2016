CREATE TABLE [dbo].[TestPassSessions] (
    [id]                INT           IDENTITY (1, 1) NOT NULL,
    [RequestedBy]       VARCHAR (50)  NOT NULL,
    [ExternalRequestId] INT           NULL,
    [RequestTime]       DATETIME      NOT NULL,
    [OutputPath]        VARCHAR (250) NOT NULL,
    CONSTRAINT [PK_TestPasses] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40)
);

