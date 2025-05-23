{{ config(materialized="table") }}

with seller_cte as (
    select 
        sale_id, 
        seller_1_name, 
        seller_1_state, 
        seller_2_name, 
        seller_2_state 
    from public.nj_raw
)

select 
    sale_id as seller_id, 
    seller_1_name, 
    seller_1_state, 
    seller_2_name, 
    seller_2_state
from seller_cte
