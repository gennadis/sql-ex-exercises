SELECT maker,
  MAX(type)
FROM product
GROUP BY maker
HAVING COUNT(DISTINCT type) = 1
  AND COUNT(model) > 1;