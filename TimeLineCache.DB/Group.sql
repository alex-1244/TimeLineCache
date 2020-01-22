CREATE TABLE [dbo].[Group]
(
	[Id] uniqueidentifier NOT NULL CONSTRAINT DF_Group_Id DEFAULT NEWID() CONSTRAINT PK_Group_Id PRIMARY KEY,
	[Name] nvarchar(50) NOT NULL,
	[CustomerId] uniqueidentifier NOT NULL,
	[ParentGroupId] uniqueidentifier NULL,
	[CreatedAt] Datetime2 NOT NULL CONSTRAINT DF_Group_CreatedAt DEFAULT GETDATE(),
	CONSTRAINT FK_GroupCustomer FOREIGN KEY (CustomerId) REFERENCES Customer(Id),
	CONSTRAINT FK_GroupParentGroup FOREIGN KEY (ParentGroupId) REFERENCES [Group](Id)
)
