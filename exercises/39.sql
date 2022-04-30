SELECT distinct o.ship
FROM outcomes AS o
  JOIN battles AS b ON b.name = o.battle
WHERE o.result = 'damaged'
  AND EXISTS(
    SELECT *
    FROM outcomes o2
      JOIN battles b2 ON b2.name = o2.battle
    WHERE o2.ship = o.ship
      and b.date < b2.date
  );