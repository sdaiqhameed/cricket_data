CREATE TABLE [dbo].[match_players]
(
	[matchID] VARCHAR(50) NOT NULL ,
	[teamID] VARCHAR(50) NOT NULL, 
	[playerID] VARCHAR(50) NOT NULL, 
    PRIMARY KEY ([matchID], [teamID], [playerID])	
)
