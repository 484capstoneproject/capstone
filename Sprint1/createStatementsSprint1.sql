CREATE TABLE [dbo].[Business](
	[BusinessEntityID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessName] [varchar](25) NOT NULL,
	[FirstName] [varchar](20) NULL,
	[LastName] [varchar](20) NULL,
	[EmailAddress] [varchar](40) NULL,
	[username] [varchar](20) NULL,
	[PhoneNumber] [varchar](10) NULL,
	[JobTitle] [varchar](25) NULL,
	[Address] [varchar](25) NULL,
	[Address2] [varchar](25) NULL,
	[City] [varchar](25) NULL,
	[State] [varchar](25) NULL,
	[Zip] [varchar](25) NULL,
)

CREATE TABLE [dbo].[Password](
	[BusinessEntityID] [int] NULL,
	[username] [varchar](20) NULL,
	[firstname] [varchar](20) NULL,
	[password] [varchar](100) NULL
) 