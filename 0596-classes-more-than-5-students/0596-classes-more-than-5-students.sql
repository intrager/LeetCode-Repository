SELECT class
  FROM (SELECT class
               , COUNT(*) AS CNT 
          FROM Courses
        GROUP BY class)
 WHERE CNT >= 5;

 
 