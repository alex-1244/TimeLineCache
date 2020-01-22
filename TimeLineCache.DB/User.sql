CREATE TABLE [dbo].[User]
(
	[Id] uniqueidentifier NOT NULL CONSTRAINT DF_User_Id DEFAULT NEWID() CONSTRAINT PK_User_Id PRIMARY KEY,
	[Username] nvarchar(50) NOT NULL,
	[CustomerId] uniqueidentifier NOT NULL,
	[CreatedAt] Datetime2 NOT NULL CONSTRAINT DF_User_CreatedAt DEFAULT GETDATE(),
	CONSTRAINT FK_UserCustomer FOREIGN KEY (CustomerId) REFERENCES Customer(Id)
)
