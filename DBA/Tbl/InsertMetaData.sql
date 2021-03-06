/****************************************************************************************************************/
/*		dbo.Languages																							*/
/****************************************************************************************************************/
IF NOT EXISTS (	SELECT	1
				FROM	dbo.Languages
				WHERE	LanguageDescription = 'Hebrew')
INSERT INTO dbo.Languages (
			LanguageDescription)
	SELECT	'Hebrew'

IF NOT EXISTS (	SELECT	1
				FROM	dbo.Languages
				WHERE	LanguageDescription = 'English')
INSERT INTO dbo.Languages (
			LanguageDescription)
	SELECT	'English'
/*
SELECT	*
FROM	dbo.Languages
*/

/****************************************************************************************************************/
/*		dbo.Strings																								*/
/****************************************************************************************************************/

DECLARE @String			nvarchar(200)
DECLARE @StringID		int

SELECT @String = N'��', @StringID = 100
IF NOT EXISTS (	SELECT 1 FROM dbo.Strings WHERE	LanguageID = 1 AND String = @String )
	INSERT INTO dbo.Strings (StringID, LanguageID, String) SELECT @StringID, 1, @String

SELECT @String = N'�����', @StringID = 101
IF NOT EXISTS (	SELECT 1 FROM dbo.Strings WHERE	LanguageID = 1 AND String = @String )
	INSERT INTO dbo.Strings (StringID, LanguageID, String) SELECT @StringID, 1, @String

SELECT @String = N'���', @StringID = 102
IF NOT EXISTS (	SELECT 1 FROM dbo.Strings WHERE	LanguageID = 1 AND String = @String )
	INSERT INTO dbo.Strings (StringID, LanguageID, String) SELECT @StringID, 1, @String

SELECT @String = N'���� �������', @StringID = 200
IF NOT EXISTS (	SELECT 1 FROM dbo.Strings WHERE	LanguageID = 1 AND String = @String )
	INSERT INTO dbo.Strings (StringID, LanguageID, String) SELECT @StringID, 1, @String

SELECT @String = N'���', @StringID = 201
IF NOT EXISTS (	SELECT 1 FROM dbo.Strings WHERE	LanguageID = 1 AND String = @String )
	INSERT INTO dbo.Strings (StringID, LanguageID, String) SELECT @StringID, 1, @String

SELECT @String = N'��� �����', @StringID = 202
IF NOT EXISTS (	SELECT 1 FROM dbo.Strings WHERE	LanguageID = 1 AND String = @String )
	INSERT INTO dbo.Strings (StringID, LanguageID, String) SELECT @StringID, 1, @String

/****************************************************************************************************************/
/*		dbo.Strings																								*/
/****************************************************************************************************************/

DECLARE @ComboDataDescription nvarchar(200)
DECLARE @ComboDataID	smallint
--DECLARE @StringID	int			--already exists on this script

SELECT @ComboDataDescription = 'Severity', @ComboDataID = 1, @StringID = 100
IF NOT EXISTS (SELECT 1 FROM dbo.ComboData WHERE ComboDataDescription = @ComboDataDescription AND ComboDataID = @ComboDataID)
	INSERT INTO dbo.ComboData (ComboDataDescription, ComboDataID, StringID) SELECT @ComboDataDescription, @ComboDataID, @StringID

SELECT @ComboDataDescription = 'Severity', @ComboDataID = 2, @StringID = 101
IF NOT EXISTS (SELECT 1 FROM dbo.ComboData WHERE ComboDataDescription = @ComboDataDescription AND ComboDataID = @ComboDataID)
	INSERT INTO dbo.ComboData (ComboDataDescription, ComboDataID, StringID) SELECT @ComboDataDescription, @ComboDataID, @StringID

SELECT @ComboDataDescription = 'Severity', @ComboDataID = 3, @StringID = 102
IF NOT EXISTS (SELECT 1 FROM dbo.ComboData WHERE ComboDataDescription = @ComboDataDescription AND ComboDataID = @ComboDataID)
	INSERT INTO dbo.ComboData (ComboDataDescription, ComboDataID, StringID) SELECT @ComboDataDescription, @ComboDataID, @StringID

SELECT @ComboDataDescription = 'Organization', @ComboDataID = 2, @StringID = 200
IF NOT EXISTS (SELECT 1 FROM dbo.ComboData WHERE ComboDataDescription = @ComboDataDescription AND ComboDataID = @ComboDataID)
	INSERT INTO dbo.ComboData (ComboDataDescription, ComboDataID, StringID) SELECT @ComboDataDescription, @ComboDataID, @StringID

SELECT @ComboDataDescription = 'Organization', @ComboDataID = 1, @StringID = 201
IF NOT EXISTS (SELECT 1 FROM dbo.ComboData WHERE ComboDataDescription = @ComboDataDescription AND ComboDataID = @ComboDataID)
	INSERT INTO dbo.ComboData (ComboDataDescription, ComboDataID, StringID) SELECT @ComboDataDescription, @ComboDataID, @StringID

SELECT @ComboDataDescription = 'Organization', @ComboDataID = 2, @StringID = 202
IF NOT EXISTS (SELECT 1 FROM dbo.ComboData WHERE ComboDataDescription = @ComboDataDescription AND ComboDataID = @ComboDataID)
	INSERT INTO dbo.ComboData (ComboDataDescription, ComboDataID, StringID) SELECT @ComboDataDescription, @ComboDataID, @StringID

