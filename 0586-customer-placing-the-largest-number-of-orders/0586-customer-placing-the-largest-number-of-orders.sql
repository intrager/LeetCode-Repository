SELECT customer_number
  FROM (SELECT customer_number
               , COUNT(*) AS CNT
          FROM Orders
         GROUP BY customer_number
        ORDER BY COUNT(*) DESC)
 WHERE ROWNUM = 1;