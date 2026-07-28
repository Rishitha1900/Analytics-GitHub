SELECT countryname
FROM  {{ ref('country_test') }}
 
GROUP BY countryname
 HAVING COUNT(*) > 1
 