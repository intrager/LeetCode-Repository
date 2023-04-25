SELECT t.id AS ID
  FROM (SELECT w.id
               , w.temperature AS 기준온도
               , w.recordDate - LAG(w.recordDate, 1) OVER(ORDER BY w.recordDate) AS 최솟값
               , LAG(w.temperature, 1) OVER(ORDER BY w.recordDate) AS 온도
          FROM Weather w) t
 WHERE 최솟값 = 1
   AND t.기준온도 > t.온도