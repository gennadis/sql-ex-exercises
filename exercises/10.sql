SELECT model,
  price
FROM printer
WHERE price = (
    SELECT Max(price)
    FROM printer
  );