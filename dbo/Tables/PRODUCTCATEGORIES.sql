﻿CREATE TABLE [dbo].[PRODUCTCATEGORIES] (
    [ID]         INT IDENTITY (1, 1) NOT NULL,
    [PRODUCTID]  INT DEFAULT ((0)) NOT NULL,
    [CATEGORYID] INT DEFAULT ((0)) NOT NULL,
    [ISPRIMARY]  BIT DEFAULT ((0)) NOT NULL,
    [ISDELETED]  BIT DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

