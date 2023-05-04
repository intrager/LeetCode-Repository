SELECT NVL(MAX(num), null) AS num
  FROM (SELECT num, COUNT(*) AS CNT
          FROM MyNumbers
         GROUP BY num
         ORDER BY num)
 WHERE CNT = 1