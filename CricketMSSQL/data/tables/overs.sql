CREATE TABLE [dbo].[overs]
(
	[matchID] VARCHAR(50) NOT NULL, 
	[inning] INT NOT NULL,
	[over] INT NOT NULL, 
	[ball] INT NOT NULL, 
	[batter] VARCHAR(50) NOT NULL,
	[bowler] VARCHAR(50) NOT NULL,
	[non_striker] VARCHAR(50) NOT NULL,
	[batter_run] INT NOT NULL,
	[extra_run] INT NOT NULL, 
	[extra_type] VARCHAR(50) NULL,
	[total_run] INT NOT NULL, 
	[wicket_kind] VARCHAR(50) NULL, 
	[player_out] VARCHAR(50) NULL, 
	[fielder] VARCHAR(50) NULL, 
    CONSTRAINT [PK_overs] PRIMARY KEY ([matchID], [inning], [over], [ball])
)
