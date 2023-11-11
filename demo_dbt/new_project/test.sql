-- Replace 'your_schema' with the actual schema name
with t as (
    select * from {{ source('PUBLIC', 'SAMPLE_BUSINESS') }}
)
select * from t

SELECT * FROM SAMPLE_BUSINESS