SELECT author_id AS id
  FROM (SELECT COUNT(*) AS CNT, author_id
          FROM Views
         WHERE view_date IS NOT NULL
           AND author_id = viewer_id
         GROUP BY author_id)
 WHERE CNT > 0
ORDER BY id