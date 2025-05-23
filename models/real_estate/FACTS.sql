{{ config(materialized="table") }}

with facts_cte as (
    select
        n.property_id,
        sale_id,
        sale_price,
        to_char(to_date(n.sale_datetime), 'YYYYMMDD') as sale_date,
        regexp_replace(cast(n.property_lat as string), '[^0-9]', '') as clean_property_lat,
        regexp_replace(cast(n.property_lon as string), '[^0-9]', '') as clean_property_lon,
        concat(clean_property_lat, clean_property_lon) as location_id,
    from public.nj_raw n
)

select 
    property_id,
    sale_id,
    concat(clean_property_lat, clean_property_lon) as location_id,
    sale_price,
    sale_date,
from facts_cte
where
    sale_price > 0
    and property_id is not null
    and location_id is not null
    and sale_price is not null
    and sale_date is not null