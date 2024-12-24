-- =============================================
-- Author:		Sadiq
-- Create date: 20241206
-- Description:	Add or update the over
-- =============================================
CREATE PROCEDURE [dbo].[AddUpdateOver]
	@matchID varchar(50), 
	@inning int,
	@over int, 
    @ball int, 
    @batter varchar(50),
    @bowler varchar(50),
    @non_striker varchar(50),
    @batter_run int, 
    @extra_run int, 
    @extra_type varchar(50),
    @total_run int, 
    @wicket_kind varchar(50),
    @player_out varchar(50),
    @fielder varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	-- if not exists then add else update
	IF NOT EXISTS ( SELECT 1 FROM [overs] WHERE matchID = @matchID AND inning = @inning AND [over] = @over AND ball = @ball)
	BEGIN
        INSERT INTO [dbo].[overs]
                   ([matchID]
                   ,[inning]
                   ,[over]
                   ,[ball]
                   ,[batter]
                   ,[bowler]
                   ,[non_striker]
                   ,[batter_run]
                   ,[extra_run]
                   ,[extra_type]
                   ,[total_run]
                   ,[wicket_kind]
                   ,[player_out]
                   ,[fielder])
             VALUES
                   (@matchID
                   ,@inning
                   ,@over
                   ,@ball
                   ,@batter
                   ,@bowler
                   ,@non_striker
                   ,@batter_run
                   ,@extra_run
                   ,@extra_type
                   ,@total_run
                   ,@wicket_kind
                   ,@player_out
                   ,@fielder)
	END
    ELSE
    BEGIN
        UPDATE [dbo].[overs]
           SET 
               [batter] = @batter
              ,[bowler] = @bowler
              ,[non_striker] = @non_striker
              ,[batter_run] = @batter_run
              ,[extra_run] = @extra_run
              ,[extra_type] = @extra_type
              ,[total_run] = @total_run
              ,[wicket_kind] = @wicket_kind
              ,[player_out] = @player_out
              ,[fielder] = @fielder
         WHERE matchID = @matchID AND inning = @inning AND [over] = @over AND ball = @ball
    END
END