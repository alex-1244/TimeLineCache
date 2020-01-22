CREATE TABLE [dbo].[Customer]
(
	[Id] uniqueidentifier NOT NULL CONSTRAINT DF_Customer_Id DEFAULT NEWID() CONSTRAINT PK_Customer_Id PRIMARY KEY,
	[Name] nvarchar(50) NOT NULL,
	[CreatedAt] Datetime2 NOT NULL CONSTRAINT DF_Customer_CreatedAt DEFAULT GETDATE()
)
