SELECT name
FROM ships
WHERE name = class
UNION
SELECT ship
FROM outcomes
  JOIN classes ON outcomes.ship = classes.class