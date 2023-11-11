-- Replace 'your_schema' with the actual schema name
with t as (
    select * from {{ source('HAIDANGMB.PUBLIC', 'SAMPLE_BUSINESS') }}
)
select * from t