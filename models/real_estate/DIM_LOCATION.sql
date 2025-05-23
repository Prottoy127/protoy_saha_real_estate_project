{{ config(materialized="table") }}

with
    location_cte as (
        select
            sale_id,
            property_street_address,
            property_city,
            property_county,
            property_township,
            state,
            property_zip5,
            property_lat,
            property_lon,
            regexp_replace(
                cast(property_lat as string), '[^0-9]', ''
            ) as clean_property_lat,
            regexp_replace(
                cast(property_lon as string), '[^0-9]', ''
            ) as clean_property_lon
        from public.nj_raw
        where property_lat is not null and property_lon is not null
    )

select
    concat(clean_property_lat, clean_property_lon) as location_id,
    property_street_address,
    property_city,
    property_county,
    property_township,
    state,
    property_zip5,
    property_lat,
    property_lon,
    clean_property_lat,
    clean_property_lon
from location_cte
--where
--    location_id is not null
--    and property_street_address is not null
--    and property_city is not null
--    and property_county is not null
--    and state is not null
--    and property_zip5 is not null
--    and property_lat is not null
--    and property_lon is not null
--    and clean_property_lat is not null
--    and clean_property_lon is not null
