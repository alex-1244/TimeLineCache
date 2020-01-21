CREATE TABLE [dbo].[User]
(
	[Id] uniqueidentifier NOT NULL DEFAULT NEWID() PRIMARY KEY,
	[Username] nvarchar(50) NOT NULL,
	[CustomerId] uniqueidentifier NOT NULL,
	[CreatedAt] Datetime2 NOT NULL default GETDATE(),
	CONSTRAINT FK_UserCustomer FOREIGN KEY (CustomerId) REFERENCES Customer(Id)
)
