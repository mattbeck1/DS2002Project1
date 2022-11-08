

SELECT COUNT(*) as NumberOfSales, officeCity
FROM (
	SELECT employees_key, lastName, firstName, city as officeCity
	FROM dim_employees as e
	INNER JOIN dim_offices as o
	ON e.officeCode = o.officeCode) as oe
INNER JOIN fact_table as ft
ON oe.employees_key = ft.salesRepEmployeeNumber
GROUP BY officeCity;  