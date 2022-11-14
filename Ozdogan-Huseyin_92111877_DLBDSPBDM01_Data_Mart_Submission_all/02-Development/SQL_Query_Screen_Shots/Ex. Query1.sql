SELECT
    airbnb.facilityinvoice.create_time        AS 'Invoice date',
    airbnb.facilityinvoice.stayedDay          AS Stayed_Day,
    airbnb.facilityprice.pricePerDay          AS 'Price/Day',
    airbnb.accountpayable.amount              AS Amount,
    airbnb.facilityinvoice.discount           AS Discount,
    airbnb.facilityinvoice.invoiceAmountTotal AS 'Total Invoice Amount',
    airbnb.facility.name                      AS Host_Name,
    airbnb.facility.adress                    AS Host_Address,
    airbnb.accountpayable.orgName             AS Guest_Name,
    airbnb.accountpayable.address             AS Guest_Address
FROM
    airbnb.facilityinvoice_has_accountpayable
INNER JOIN
    airbnb.accountpayable
ON
    (
        airbnb.facilityinvoice_has_accountpayable.accountPayable_id_acctPayable =
        airbnb.accountpayable.id_acctPayable)
INNER JOIN
    airbnb.facilityinvoice
ON
    (
        airbnb.facilityinvoice_has_accountpayable.facilityInvoice_id_facilityInvoice =
        airbnb.facilityinvoice.id_facilityInvoice)
INNER JOIN
    airbnb.facility
ON
    (
        airbnb.facilityinvoice.fk_facilityId = airbnb.facility.id_facility)
INNER JOIN
    airbnb.facilityprice
ON
    (
        airbnb.facilityinvoice.fk_facilityPriceId = airbnb.facilityprice.id_facilityPrice) ;