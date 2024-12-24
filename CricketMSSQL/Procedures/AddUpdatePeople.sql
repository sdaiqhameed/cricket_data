-- =============================================
-- Author:		Sadiq
-- Create date: 20241206
-- Description:	Add or update the people
-- =============================================
CREATE PROCEDURE [dbo].[AddUpdatePeople] 
	@id varchar(50), 
	@name varchar(255)
AS
BEGIN
	SET NOCOUNT ON;
	-- if not exists then add else update
	IF NOT EXISTS ( SELECT 1 FROM people WHERE Id = @id)
	BEGIN
		INSERT INTO [dbo].[people]([Id],[FullName])
		VALUES (@id, @name)
	END
	ELSE
	BEGIN
		UPDATE [dbo].[people] SET [FullName] = @name WHERE Id = @id
	END
END