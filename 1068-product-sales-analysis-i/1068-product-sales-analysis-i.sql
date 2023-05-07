SELECT P.product_name, S.year, S.price
  FROM Product P JOIN Sales S
                 ON P.product_id = S.product_id
ORDER BY S.year DESC