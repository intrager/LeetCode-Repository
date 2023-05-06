SELECT actor_id, director_id
  FROM (SELECT actor_id, director_id, COUNT(*) AS CNT
          FROM ActorDirector
         GROUP BY actor_id, director_id
          HAVING COUNT(*) >= 3);