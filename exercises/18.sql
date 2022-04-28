SELECT DISTINCT product.maker,
  printer.price
FROM printer
  JOIN product ON printer.model = product.model
WHERE color = 'y'
  AND printer.price = (
    SELECT MIN(price)
    FROM printer
    WHERE color = 'y'
  );