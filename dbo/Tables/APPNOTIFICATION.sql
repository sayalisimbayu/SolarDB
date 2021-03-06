﻿CREATE TABLE [dbo].[APPNOTIFICATION] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [TYPE]        NVARCHAR (20)  DEFAULT ('') NOT NULL,
    [MESSAGE]     NVARCHAR (200) DEFAULT ('') NOT NULL,
    [PROGRESS]    INT            DEFAULT ((0)) NOT NULL,
    [ISREAD]      BIT            DEFAULT ((0)) NOT NULL,
    [ISDELETED]   BIT            DEFAULT ((0)) NOT NULL,
    [UPDATEDDATE] DATETIME       DEFAULT (getdate()) NOT NULL,
    [CREATEDDATE] DATETIME       CONSTRAINT [DF_APPNOTIFICATION_CREATEDDATE] DEFAULT (getdate()) NOT NULL,
    [USERID]      INT            CONSTRAINT [DF_APPNOTIFICATION_USERID] DEFAULT ((-1)) NOT NULL,
    [RECORDID]    INT            DEFAULT ((-1)) NOT NULL,
    [NTYPE]       NVARCHAR (10)  DEFAULT ('') NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);



