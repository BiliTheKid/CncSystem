-- Last Change 02/04/2020

DECLARE @out_json NVARCHAR(max)

DECLARE @json NVARCHAR(max)

SET @json = '{
				"medicalcenterdescription": "�������",
				"street": "�����",
				"streetnumber": "6",
				"city": "�� ���� ���",
				"geolocation":"31.4062525,35.0818155"
			}'
/*
SET @json = '{
				"medicalcenterdescription": "������",
				"street": "���� ����",
				"streetnumber": "16",
				"city": "�����",
				"geolocation":""
			}'
*/
EXEC dbo.stp_AddMedicalCenter 
		@in_json	= @json,
		@out_json	= @out_json OUTPUT

select @out_json out_json


select * from dbo.MedicalCenters

/*

delete MedicalCenters

DBCC CHECKIDENT ('dbo.MedicalCenters', RESEED, 0);
GO

*/

/**************************************************************************/

