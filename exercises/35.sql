SELECT model,
  type
FROM product
WHERE model NOT LIKE '%[^0-9]%'
  OR LOWER(model) NOT LIKE '%[^a-z]%'