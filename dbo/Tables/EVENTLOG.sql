﻿CREATE TABLE [dbo].[EVENTLOG] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [ENTITY]     VARCHAR (50)   DEFAULT ('') NOT NULL,
    [OLDDATA]    VARCHAR (MAX)  DEFAULT ('') NOT NULL,
    [NEWDATA]    VARCHAR (MAX)  DEFAULT ('') NOT NULL,
    [CREATEDATE] DATETIME       DEFAULT (getdate()) NOT NULL,
    [STAMP]      DATETIME       DEFAULT (getdate()) NOT NULL,
    [DATAOBJ]    NVARCHAR (MAX) DEFAULT ('') NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

