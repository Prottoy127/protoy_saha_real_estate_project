{{ config(materialized="table") }}

with buyer_cte as (
    select 
        sale_id, 
        buyer_1_name, 
        buyer_1_state, 
        buyer_2_name, 
        buyer_2_state
    from public.nj_raw
)

select
    sale_id as buyer_id, 
    buyer_1_name,
    buyer_1_state,
    buyer_2_name,
    buyer_2_state
from buyer_cte
where
    buyer_1_name is not null
    and buyer_1_state is not null
