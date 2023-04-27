SELECT c1.name
  FROM Customer c1
 WHERE c1.referee_id != (SELECT id
                           FROM Customer
                          WHERE id = 2)
    OR c1.referee_id IS NULL;