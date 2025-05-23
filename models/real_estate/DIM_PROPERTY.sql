{{ config(materialized="table") }}

with property_cte as (
    select 
        distinct PROPERTY_ID, 
        property_type, 
        building_year_built, 
        building_num_units, 
        building_num_stories,
        building_num_beds,
        building_num_baths,
        building_area_sqft,
        land_area_acres,
        land_area_sqft,
        land_type,
        building_assessed_value,
        land_assessed_value,
        total_assessed_value,
        building_appraised_value,
        land_appraised_value,
        total_appraised_value
    from public.nj_raw
)

select *
from property_cte
--where
--    property_id is not null
--    and property_type is not null
--    and building_year_built is not null
--    and land_area_acres is not null
--    and land_area_sqft is not null
