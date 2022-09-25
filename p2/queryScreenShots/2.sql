SELECT 
    airbnb.userrole.userRole                                   AS 'Role', 
    concat(airbnb.userrole.name, ' ', airbnb.userrole.surname) AS USER_NAME_SURNAME, 
    airbnb.facility.name                                       AS Host_Name, 
    airbnb.facilityorder.dayOrder                              AS 'Ordered/Day', 
    airbnb.facilityorder.create_time                           AS 'Order Date', 
    airbnb.usertaxid.userTaxNo                                 AS Tax_ID, 
    airbnb.bank.bankName                                       AS Bank_Name, 
    airbnb.bank.iban                                           AS IBAN 
FROM 
    airbnb.bank 
INNER JOIN 
    airbnb.userrole 
ON 
    ( 
        airbnb.bank.fk_userRole = airbnb.userrole.id_userRole) 
INNER JOIN 
    airbnb.facility 
ON 
    ( 
        airbnb.bank.fk_facilityId = airbnb.facility.id_facility) 
INNER JOIN 
    airbnb.facilityorder 
ON 
    ( 
        airbnb.facility.id_facility = airbnb.facilityorder.fk_facilityId) 
    , 
    airbnb.usertaxid 
WHERE 
    airbnb.userrole.userRole = 'guest' ;