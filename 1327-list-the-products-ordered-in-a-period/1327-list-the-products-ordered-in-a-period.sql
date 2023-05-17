SELECT P.product_name, SUM(O.unit) AS unit
  FROM Products P JOIN Orders O ON P.product_id = O.product_id
 WHERE TO_CHAR(O.order_date, 'YYYY-MM') = '2020-02'
 GROUP BY P.product_name
  HAVING SUM(O.unit) >= 100
ORDER BY P.product_name DESC