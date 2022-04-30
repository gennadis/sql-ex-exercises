SELECT count(q.c)
FROM (
    SELECT count(model) AS c
    FROM product
    GROUP BY maker
    HAVING count(model) = 1
  ) AS q