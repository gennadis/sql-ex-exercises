SELECT product.maker,
  AVG(laptop.screen)
FROM laptop
  JOIN product ON laptop.model = product.model
GROUP BY product.maker