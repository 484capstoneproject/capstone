-- NextStepGo System <> Sprint1 <> Table Creation Statements

-- Please create a Database named "Sprint1" prior to executing the create table commands below. Thank you.

Use Sprint1 CREATE TABLE [dbo].[Business](
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
	[Zip] [varchar](25) NULL
)

CREATE TABLE [dbo].[Password](
	[BusinessEntityID] [int] NULL,
	[username] [varchar](20) NULL,
	[firstname] [varchar](20) NULL,
	[password] [varchar](100) NULL,
	[Email] [varchar](30) NULL
) 

CREATE TABLE [dbo].[JobPosting](
	[JobPostingID] [int] IDENTITY(1,1) NOT NULL,
	[JobTitle] [nvarchar](max) NOT NULL,
	[JobType] [nvarchar](max) NOT NULL,
	[CareerCluster] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Month] [nvarchar](max) NOT NULL,
	[Day] [nvarchar](max) NOT NULL,
	[Year] [nvarchar](max) NOT NULL,
	[BusinessEntityID] [int] NOT NULL
	CONSTRAINT PK_JobPosting PRIMARY KEY NONCLUSTERED ([JobPostingID], [BusinessEntityID])
) 

CREATE TABLE [dbo].[LearningPosting](
	[LearningPostingID] [int] IDENTITY(1,1) NOT NULL,
	[LearningTitle] [nvarchar](max) NOT NULL,
	[LearningType] [nvarchar](max) NOT NULL,
	[CareerCluster] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Month] [nvarchar](max) NOT NULL,
	[Day] [nvarchar](max) NOT NULL,
	[Year] [nvarchar](max) NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	CONSTRAINT PK_LearningPosting PRIMARY KEY NONCLUSTERED ([LearningPostingID], [BusinessEntityID])
)

CREATE TABLE [dbo].[ScholarshipPosting](
	[ScholarshipPostingID] [int] IDENTITY(1,1) NOT NULL,
	[ScholarshipName] [nvarchar](max) NOT NULL,
	[Amount] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Month] [nvarchar](max) NOT NULL,
	[Day] [nvarchar](max) NOT NULL,
	[Year] [nvarchar](max) NOT NULL,
	CONSTRAINT PK_ScholarshipPosting PRIMARY KEY NONCLUSTERED ([ScholarshipPostingID], [BusinessEntityID])
)

GO
