CREATE TABLE [dbo].[Matches]
(
    [matchID] VARCHAR(50) NOT NULL PRIMARY KEY,
    [eventID] VARCHAR(50) NOT NULL, 
    [venueID] VARCHAR(50) NOT NULL,
    [meta_version] VARCHAR(50),
    [meta_created] DATETIME, 
    [revision] VARCHAR(50),
    [balls_per_over] int,
    [match_number] int,
    [stage] VARCHAR(50),
    [city] VARCHAR(50),
    [start_date] VARCHAR(50),
    [gender] VARCHAR(50),
    [match_type] VARCHAR(50),
    [team1ID] VARCHAR(50),
    [team2ID] VARCHAR(50),
    [toss_winner] VARCHAR(50), 
    [toss_decision] VARCHAR(50), 
    [overs] int,
    [result]  VARCHAR(50), 
    [winner]  VARCHAR(50), 
    [win_by]  VARCHAR(50),
    [loser] VARCHAR(50),
    [player_of_match] VARCHAR(50),
    [reserve_umpire] VARCHAR(50),
    [match_referee] VARCHAR(50),
    [tv_umpire] VARCHAR(50),
    [umpire1] VARCHAR(50), 
    [umpire2] VARCHAR(50),
    [team_type] VARCHAR(50)
)
