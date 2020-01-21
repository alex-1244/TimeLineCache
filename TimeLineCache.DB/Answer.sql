CREATE TABLE [dbo].[Answer]
(
	[Id] uniqueidentifier NOT NULL DEFAULT NEWID() PRIMARY KEY,
	[Category] INT NOT NULL,
	[Grade] INT NOT NULL,
	[UserId] uniqueidentifier NOT NULL,
	[CreatedAt] Datetime2 NOT NULL default GETDATE(),
	CONSTRAINT FK_AnswerUser FOREIGN KEY (UserId) REFERENCES [User](Id)
)
