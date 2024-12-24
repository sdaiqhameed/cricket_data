-- =============================================
-- Author:		Sadiq
-- Create date: 20241206
-- Description:	Add or update the match
-- =============================================
CREATE PROCEDURE [dbo].[AddUpdateMatch]
    @matchID VARCHAR(50)
    ,@eventID VARCHAR(50)
    ,@venueID VARCHAR(50)
    ,@meta_version VARCHAR(50)
    ,@meta_created DATETIME
    ,@revision VARCHAR(50)
    ,@balls_per_over int
    ,@match_number int
    ,@city VARCHAR(50)
    ,@start_date VARCHAR(50)
    ,@gender VARCHAR(50)
    ,@match_type VARCHAR(50)
    ,@toss_winner VARCHAR(50)
    ,@toss_decision VARCHAR(50) 
    ,@overs int
    ,@result  VARCHAR(50) 
    ,@winner  VARCHAR(50) 
    ,@win_by  VARCHAR(50)
    ,@reserve_umpire VARCHAR(50)
    ,@match_referee VARCHAR(50)
    ,@tv_umpire VARCHAR(50)
    ,@umpire1 VARCHAR(50)
    ,@umpire2 VARCHAR(50)
    ,@team_type VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;
	-- if not exists then add else update
	IF NOT EXISTS ( SELECT 1 FROM [Matches] WHERE matchID = @matchID)
	BEGIN
        INSERT INTO [dbo].[Matches]
                   ([matchID]
                   ,[eventID]
                   ,[venueID]
                   ,[meta_version]
                   ,[meta_created]
                   ,[revision]
                   ,[balls_per_over]
                   ,[match_number]
                   ,[city]
                   ,[start_date]
                   ,[gender]
                   ,[match_type]
                   ,[toss_winner]
                   ,[toss_decision]
                   ,[overs]
                   ,[result]
                   ,[winner]
                   ,[win_by]
                   ,[reserve_umpire]
                   ,[match_referee]
                   ,[tv_umpire]
                   ,[umpire1]
                   ,[umpire2]
                   ,[team_type])
             VALUES
                   (@matchID
                   ,@eventID
                   ,@venueID
                   ,@meta_version
                   ,@meta_created
                   ,@revision
                   ,@balls_per_over
                   ,@match_number
                   ,@city
                   ,@start_date
                   ,@gender
                   ,@match_type
                   ,@toss_winner
                   ,@toss_decision
                   ,@overs
                   ,@result
                   ,@winner
                   ,@win_by
                   ,@reserve_umpire
                   ,@match_referee
                   ,@tv_umpire
                   ,@umpire1
                   ,@umpire2
                   ,@team_type)
	END
    ELSE
    BEGIN
        UPDATE [dbo].[Matches]
           SET 
               [eventID] = @eventID
              ,[venueID] = @venueID
              ,[meta_version] = @meta_version
              ,[meta_created] = @meta_created
              ,[revision] = @revision
              ,[balls_per_over] = @balls_per_over
              ,[match_number] = @match_number
              ,[city] = @city
              ,[start_date] = @start_date
              ,[gender] = @gender
              ,[match_type] = @match_type
              ,[toss_winner] = @toss_winner
              ,[toss_decision] = @toss_decision
              ,[overs] = @overs
              ,[result] = @result
              ,[winner] = @winner
              ,[win_by] = @win_by
              ,[reserve_umpire] = @reserve_umpire
              ,[match_referee] = @match_referee
              ,[tv_umpire] = @tv_umpire
              ,[umpire1] = @umpire1
              ,[umpire2] = @umpire2
              ,[team_type] = @team_type
         WHERE matchID = @matchID

    END
END 