SELECT name
FROM ships
  JOIN classes ON ships.class = classes.class
WHERE classes.type = 'bb'
  AND classes.displacement > 35000
  AND ships.launched >= 1922;