
IF OBJECT_ID (N'dbo.stp_GetUsers', N'P') IS NOT NULL 
	DROP PROCEDURE dbo.stp_GetUsers
GO

/* Version 1.0.0 - OhadP 01/04/2020 Initial Version */

/*

@out_json format:
	{ 
		"userid": "2", 
		"firstname": "john",
		"lastname": "doe",
		"identitynumber": "123456789",
		"username": "johnd",
		"active": "1",
		"insertdate": "2020-03-30T22:49:05.800",
		"updatedate": "2020-03-30T22:49:05.800"
	}

errorno values:
	
*/

CREATE PROCEDURE dbo.stp_GetUsers 
		@out_json	NVARCHAR(max) OUTPUT

AS
BEGIN

	/********************************************************************************************************************/

	SET @out_json = (
		SELECT	UserID				userid,
				FirstName			firstname,
				LastName			lastname,
				IdentityNumber		identitynumber,
				UserName			username,
				Active				active,
				InsertDate			insertdate,
				UpdateDate			updatedate
		FROM dbo.Users  
		FOR JSON AUTO
	)

END