SELECT AVG(speed)
FROM pc
  JOIN product ON pc.model = product.model
WHERE product.maker = 'A';