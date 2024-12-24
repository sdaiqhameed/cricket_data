CREATE TABLE [dbo].[teams]
(
	[teamID] VARCHAR(50) NOT NULL PRIMARY KEY,
	[team_name] VARCHAR(100) NOT NULL, 
	[gender] VARCHAR(10) NULL, 
	[team_type] VARCHAR(10) NULL
)
