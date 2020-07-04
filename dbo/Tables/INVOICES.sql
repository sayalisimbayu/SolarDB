CREATE TABLE [dbo].[INVOICES] (
    [ID]              INT             IDENTITY (1, 1) NOT NULL,
    [INVOICENO]       VARCHAR (100)   DEFAULT ('') NOT NULL,
    [INVOICEDATE]     DATETIME        DEFAULT (getdate()) NOT NULL,
    [DISCOUNT]        DECIMAL (10, 2) DEFAULT ((0)) NOT NULL,
    [ISDELETED]       BIT             DEFAULT ((0)) NOT NULL,
    [TRANSACTIONTYPE] CHAR (1)        DEFAULT ('S') NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

