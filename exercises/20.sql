SELECT maker,
  COUNT(model)
FROM product
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(model) >= 3