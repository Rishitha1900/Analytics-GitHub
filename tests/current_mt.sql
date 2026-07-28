SELECT countryname
FROM  {{ ref('country_test') }}
 
GROUP BY customername
 HAVING COUNT(*) > 1
 