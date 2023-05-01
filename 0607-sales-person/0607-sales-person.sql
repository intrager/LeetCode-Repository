SELECT name
  FROM SalesPerson
 WHERE sales_id NOT IN (SELECT O.sales_id
                          FROM Orders O, Company C
                         WHERE C.com_id = O.com_id
                           AND C.name = 'RED')