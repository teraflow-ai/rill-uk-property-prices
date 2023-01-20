SELECT cast(column02 AS date) AS 'Date of Transfer',
       column01 AS Price,
       column03 AS Postcode,
       CASE column04
           WHEN 'D' THEN 'Detached'
           WHEN 'S' THEN 'Semi-Detached'
           WHEN 'T' THEN 'Terraced'
           WHEN 'F' THEN 'Flats/Maisonettes'
           WHEN 'O' THEN 'Other'
       END AS 'Property Type',
       CASE column05
           WHEN 'Y' THEN 'Newly built property'
           WHEN 'N' THEN 'Established residential building'
       END AS 'Newly Built',
       CASE column06
           WHEN 'F' THEN 'Freehold'
           WHEN 'L' THEN 'Leasehold'
       END AS Duration,
       column09 AS Street,
       column10 AS Locality,
       column11 AS Town,
       column12 AS District,
       column13 AS County
FROM all_property_prices_raw;