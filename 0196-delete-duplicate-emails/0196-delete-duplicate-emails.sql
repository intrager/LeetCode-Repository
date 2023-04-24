DELETE FROM Person p
 WHERE p.id <> (SELECT MIN(id) 
                  FROM Person 
                 WHERE email = p.email)