SELECT result.maker,
  AVG(result.hd)
FROM (
    SELECT pc.hd,
      product.maker
    FROM pc
      JOIN product ON pc.model = product.model
    WHERE product.maker IN (
        SELECT product1.maker
        FROM product product1
          INNER JOIN printer ON product1.model = printer.model
        GROUP BY product1.maker
      )
  ) AS result
GROUP BY result.maker;