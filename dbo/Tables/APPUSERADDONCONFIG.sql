CREATE TABLE [dbo].[APPUSERADDONCONFIG] (
    [ID]                INT            IDENTITY (1, 1) NOT NULL,
    [USID]              INT            NOT NULL,
    [LANGUAGE]          VARCHAR (200)  DEFAULT ('') NOT NULL,
    [TIMEZONE]          VARCHAR (200)  DEFAULT ('') NOT NULL,
    [DATEFORMAT]        VARCHAR (200)  DEFAULT ('') NOT NULL,
    [LUCIDNOTIFICATION] NVARCHAR (250) DEFAULT ('') NOT NULL,
    [THEME]             NVARCHAR (10)  DEFAULT ('') NOT NULL,
    [SKIN]              NVARCHAR (10)  DEFAULT ('theme-blue') NOT NULL,
    [SOCIALLIST]        NVARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([USID]) REFERENCES [dbo].[APPUSER] ([ID])
);





