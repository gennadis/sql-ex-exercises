SELECT c.class
FROM (
    SELECT class,
      name
    FROM ships
    UNION
    SELECT classes.class,
      outcomes.ship
    FROM classes
      JOIN outcomes ON classes.class = outcomes.ship
  ) AS c
GROUP BY c.class
HAVING COUNT(c.class) = 1;