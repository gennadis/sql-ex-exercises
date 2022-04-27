SELECT ships.class,
  ships.name,
  classes.country
FROM ships
  JOIN classes ON ships.class = classes.class
WHERE classes.numGuns >= 10;