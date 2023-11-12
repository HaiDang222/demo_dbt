{{
  config(
    materialized='table'
  )
}}

WITH 
a 
as 
( SELECT c1, c4 FROM 
{{ref('a')}}
)
,
b 
as 
(SELECT c1, c2 
FROM {{ref('b')}})
SELECT a.c1,a.c4, b.c2 FROM a 
JOIN b ON a.c1 = b.c1

