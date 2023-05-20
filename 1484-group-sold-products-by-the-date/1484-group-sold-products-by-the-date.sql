SELECT TO_CHAR(sell_date, 'YYYY-MM-DD') AS sell_date
       , COUNT(DISTINCT product) AS num_sold
       , REGEXP_REPLACE(LISTAGG(product, ',') WITHIN GROUP (ORDER BY product), '([^,]+)(,\1)*(,|$)', '\1\3') AS products
  FROM Activities
 GROUP BY sell_date