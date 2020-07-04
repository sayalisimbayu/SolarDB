﻿CREATE TABLE [dbo].[PRODUCTS] (
    [ID]        INT             IDENTITY (1, 1) NOT NULL,
    [NAME]      VARCHAR (100)   DEFAULT ('') NOT NULL,
    [SUBHEADER] VARCHAR (100)   DEFAULT ('') NOT NULL,
    [PRICE]     DECIMAL (18, 2) DEFAULT ((0)) NOT NULL,
    [GST]       INT             DEFAULT ((0)) NOT NULL,
    [ISDELETED] BIT             DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE TRIGGER PRODUCTSHISTORYTRIGGER ON PRODUCTS AFTER UPDATE, INSERT
AS
BEGIN
INSERT INTO EVENTLOG (ENTITY,OLDDATA,NEWDATA,CREATEDATE) SELECT 'PRODUCT',d.NAME,i.NAME,GETDATE() FROM inserted i LEFT JOIN deleted d on i.ID=d.ID  WHERE d.NAME!=i.NAME;
INSERT INTO EVENTLOG (ENTITY,OLDDATA,NEWDATA,CREATEDATE) SELECT 'PRODUCT',d.PRICE,i.PRICE,GETDATE() FROM inserted i LEFT JOIN deleted d on i.ID=d.ID WHERE d.Price!=i.Price;
INSERT INTO EVENTLOG (ENTITY,OLDDATA,NEWDATA,CREATEDATE) SELECT 'PRODUCT',d.GST,i.GST,GETDATE() FROM inserted i LEFT JOIN deleted d on i.ID=d.ID  WHERE d.GST!=i.GST;
END;