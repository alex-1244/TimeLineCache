CREATE TABLE [dbo].[Answer]
(
	[Id] uniqueidentifier NOT NULL CONSTRAINT PK_Answer_Id PRIMARY KEY CONSTRAINT DF_Answer_Id DEFAULT NEWID(),
	[Category] INT NOT NULL,
	[Grade] INT NOT NULL,
	[UserId] uniqueidentifier NOT NULL,
	[CreatedAt] Datetime2 NOT NULL CONSTRAINT DF_Answer_CreatedAt DEFAULT GETDATE(),
	CONSTRAINT FK_AnswerUser FOREIGN KEY (UserId) REFERENCES [User](Id)
)
