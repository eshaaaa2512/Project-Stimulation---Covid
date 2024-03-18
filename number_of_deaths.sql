CREATE DATABASE COVID_DB;
USE COVID_DB;



--Design a stored procedure to update the number of deaths for a specific country and date.

CREATE PROCEDURE numberofdeaths
(
    @Country VARCHAR(100),
    @Date DATE)
AS
BEGIN
   

    SELECT 
        Total_Deaths = covid_19_clean_complete.Deaths
    FROM 
        covid_19_clean_complete
	 WHERE 
        covid_19_clean_complete.Country_Region = @Country  and 
		covid_19_clean_complete.Date = @date;
   

    
END
GO


DROP PROCEDURE numberofdeaths

EXECUTE numberofdeaths @country ='US', @Date='2020-03-03'

select * from covid_19_clean_complete where Country_Region = 'US';







	  

      





	 
	 