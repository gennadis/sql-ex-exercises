SELECT AVG(price)
FROM (
    SELECT pc.price
    FROM pc
      JOIN product ON pc.model = product.model
    WHERE product.maker = 'A'
    UNION ALL
    SELECT laptop.price
    FROM laptop
      JOIN product ON laptop.model = product.model
    WHERE product.maker = 'A'
  ) res