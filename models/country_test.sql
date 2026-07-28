{{ config(materialized='table') }}
 select *, 'MT' as company_name from {{ ref('country') }}