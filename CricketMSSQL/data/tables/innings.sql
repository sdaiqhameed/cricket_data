CREATE TABLE [dbo].[Innings]
(
	[matchID] VARCHAR(50) NOT NULL,
	[inningID] INT NOT NULL, 
	[teamID] VARCHAR(50) NULL, 
    CONSTRAINT [PK_Innings] PRIMARY KEY ([matchID], [inningID])
)
