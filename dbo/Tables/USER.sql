﻿CREATE TABLE [dbo].[USER] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [NAME]      VARCHAR (100) DEFAULT ('') NOT NULL,
    [PASSWORD]  VARCHAR (100) DEFAULT ('') NOT NULL,
    [ISDELETED] BIT           DEFAULT ((0)) NOT NULL,
    [USERNAME]  VARCHAR (100) DEFAULT ('') NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

