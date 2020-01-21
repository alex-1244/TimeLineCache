CREATE TABLE [dbo].[Customer]
(
	[Id] uniqueidentifier NOT NULL DEFAULT NEWID() PRIMARY KEY,
	[Name] nvarchar(50) NOT NULL,
	[CreatedAt] Datetime2 NOT NULL default GETDATE()
)
