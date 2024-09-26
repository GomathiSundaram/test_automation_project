# select * from CONTACT_INFO_RAW
#select surname, identifier from CONTACT_INFO_RAW

SELECT
    CAST("Identifier" AS DECIMAL(10)) AS Identifier,
   UPPER ("Surname") AS Surname,
    UPPER("Given_Name") AS given_name,
    UPPER("Middle_Initial") AS middle_initial,
    "Suffix" ,
    "Primary_Street_Number",
    "Primary_Street_Name",
    "City",
    "State",
    "Zipcode",
    "Primary_Street_Number_Prev",
    "Primary_Street_Name_Prev",
    "City_Prev",
    "State_Prev",
    "Zipcode_Prev",
    "Email",
    TRANSLATE("Phone", '+-', '') AS "Phone",
    "Birthmonth" || REPEAT('0', 8 - LENGTH("Birthmonth"::text)) AS "Birthmonth",
    "batch_date",
    "create_date",
    "update_date",
    "create_user",
    "update_user"
FROM
     SAMPLEDB.CONTACT_INFO.contact_info_raw