SELECT DISTINCT product.maker
FROM product
  JOIN pc ON product.model = pc.model
WHERE pc.speed >= 450;