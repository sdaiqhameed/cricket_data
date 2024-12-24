-- =============================================
-- Author:		Sadiq
-- Create date: 20241206
-- Description:	Add or update the event
-- =============================================
CREATE PROCEDURE [dbo].[AddUpdateEvent]
	@id varchar(50), 
	@name varchar(100),
	@season varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	-- if not exists then add else update
	IF NOT EXISTS ( SELECT 1 FROM [Events] WHERE eventID = @id)
	BEGIN
		INSERT INTO [dbo].[Events]([eventID],[event_name], [season])
		VALUES (@id, @name, @season)
	END
	ELSE
	BEGIN
		UPDATE [dbo].[Events] SET [event_name] = @name, [season] = @season WHERE eventID = @id
	END
END 