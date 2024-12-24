-- =============================================
-- Author:		Sadiq
-- Create date: 20241206
-- Description:	Add or update the venue
-- =============================================
CREATE PROCEDURE [dbo].[AddUpdateVenue]
	@venueID varchar(50), 
	@venueName varchar(255)
AS
BEGIN
	SET NOCOUNT ON;
	-- if not exists then add else update
	IF NOT EXISTS ( SELECT 1 FROM [Venues] WHERE venueID = @venueID)
	BEGIN
		INSERT INTO [dbo].[venues]([venueID],[venue_name])
		VALUES (@venueID, @venueName)
	END
END