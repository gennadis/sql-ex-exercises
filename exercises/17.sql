SELECT DISTINCT product.type,
  laptop.model,
  laptop.speed
FROM laptop,
  product
WHERE product.model = laptop.model
  AND laptop.speed < (
    SELECT MIN(speed)
    FROM pc
  );