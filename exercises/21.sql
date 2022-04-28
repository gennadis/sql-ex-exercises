SELECT product.maker,
  MAX(pc.price)
FROM pc
  JOIN product ON pc.model = product.model
GROUP BY product.maker