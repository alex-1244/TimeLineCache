CREATE TABLE [dbo].[Membership]
(
	[Id] uniqueidentifier NOT NULL DEFAULT NEWID() PRIMARY KEY,
	[IsAdmin] BIT NOT NULL,
	[UserId] uniqueidentifier NOT NULL,
	[GroupId] uniqueidentifier NULL,
	CONSTRAINT FK_MembershipUser FOREIGN KEY (UserId) REFERENCES [User](Id),
	CONSTRAINT FK_MembershipGroup FOREIGN KEY (GroupId) REFERENCES [Group](Id)
)
