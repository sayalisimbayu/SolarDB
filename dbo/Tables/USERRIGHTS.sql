﻿CREATE TABLE [dbo].[USERRIGHTS] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [USERID]    INT           DEFAULT ('') NOT NULL,
    [PASSWORD]  VARCHAR (100) DEFAULT ('') NOT NULL,
    [ISDELETED] BIT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

