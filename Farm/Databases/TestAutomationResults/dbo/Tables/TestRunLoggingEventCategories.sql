CREATE TABLE [dbo].[TestRunLoggingEventCategories] (
    [id]            INT          IDENTITY (1, 1) NOT NULL,
    [EventCategory] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_TestRunLoggingEventCategory] PRIMARY KEY CLUSTERED ([id] ASC) WITH (FILLFACTOR = 40),
    CONSTRAINT [UX_TestRunLoggingEventCategory] UNIQUE NONCLUSTERED ([EventCategory] ASC) WITH (FILLFACTOR = 40)
);

