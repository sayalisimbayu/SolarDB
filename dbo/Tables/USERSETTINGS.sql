﻿CREATE TABLE [dbo].[USERSETTINGS] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [USID]        INT            DEFAULT ((1)) NOT NULL,
    [ULANGUAGE]   NVARCHAR (100) DEFAULT ('') NOT NULL,
    [UTC]         NVARCHAR (100) DEFAULT ('') NOT NULL,
    [UDATEFORMAT] NVARCHAR (50)  DEFAULT ('') NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([USID]) REFERENCES [dbo].[USER] ([ID])
);

