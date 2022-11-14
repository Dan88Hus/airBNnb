SELECT 
    airbnb.facility.type AS Type,
    airbnb.facility.name AS Host_Name,
    airbnb.facility.adress AS Host_Address,
    airbnb.facilityarchitecture.totalSq AS Total_Sq,
    airbnb.facilityarchitecture.hasBalcoon AS Has_Balcoon,
    airbnb.facilityarchitecture.hasRoom AS Has_Room,
    airbnb.facilityavailability.availableStartDate AS Availibility_Start_Date,
    airbnb.facilityavailability.availableEndDate AS Availibility_End_Date
FROM
    airbnb.facilityarchitecture
        INNER JOIN
    airbnb.facility ON (airbnb.facilityarchitecture.fk_facilityId = airbnb.facility.id_facility)
        INNER JOIN
    airbnb.facilityavailability ON (airbnb.facility.id_facility = airbnb.facilityavailability.fk_facilityId);
