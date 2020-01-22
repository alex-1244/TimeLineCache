CREATE TABLE [dbo].[Membership]
(
	[Id] uniqueidentifier NOT NULL CONSTRAINT DF_Membership_Id DEFAULT NEWID() CONSTRAINT PK_Membership_Id PRIMARY KEY,
	[IsAdmin] BIT NOT NULL,
	[UserId] uniqueidentifier NOT NULL,
	[GroupId] uniqueidentifier NULL,
	CONSTRAINT FK_MembershipUser FOREIGN KEY (UserId) REFERENCES [User](Id),
	CONSTRAINT FK_MembershipGroup FOREIGN KEY (GroupId) REFERENCES [Group](Id)
)
