select count(*)  from {{ source('ANALYTICS'.EMPLOYEE)}} as src
join select count(*)  from {{ country_test}}

--count diff between source and target
select src.source_code,src_counts,tgt_counts,src_counts-tgt_counts as diff from 
(select 'ACE_USPOS_MONTHLY' as source_code,count(*) as src_counts  FROM ) src
inner join
( select * from
(select  source_code,sum(counts) as tgt_counts from  
( SELECT 'ACE_USPOS_MONTHLY' AS source_code, count(*) as counts  FROM 
)group by source_code )) tgt
on tgt.source_code =src.source_code