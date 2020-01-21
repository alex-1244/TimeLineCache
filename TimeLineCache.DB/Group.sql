CREATE TABLE [dbo].[Group]
(
	[Id] uniqueidentifier NOT NULL DEFAULT NEWID() PRIMARY KEY,
	[Name] nvarchar(50) NOT NULL,
	[CustomerId] uniqueidentifier NOT NULL,
	[ParentGroupId] uniqueidentifier NULL,
	[CreatedAt] Datetime2 NOT NULL default GETDATE(),
	CONSTRAINT FK_GroupCustomer FOREIGN KEY (CustomerId) REFERENCES Customer(Id),
	CONSTRAINT FK_GroupParentGroup FOREIGN KEY (ParentGroupId) REFERENCES [Group](Id)
)
