SELECT T1.product_id, T2.product_name
  FROM (SELECT product_id
          FROM SALES
         GROUP BY product_id
         HAVING SUM(CASE WHEN sale_date BETWEEN '2019-01-01' AND '2019-03-31' THEN 0 ELSE 1 END) = 0) T1
       JOIN Product T2
       ON T1.product_id = T2.product_id