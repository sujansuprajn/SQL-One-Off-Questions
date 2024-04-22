
WITH cte AS (
    SELECT lat_n,
           cast(ROW_NUMBER() OVER (ORDER BY lat_n ASC) as decimal(10,4)) AS rnk_asc,
           cast(ROW_NUMBER() OVER (ORDER BY lat_n DESC) as decimal(10,4)) AS rnk_desc
    FROM station
)
SELECT ROUND(AVG(lat_n), 4)
FROM cte
WHERE ABS(rnk_desc  - rnk_asc ) <= 1;