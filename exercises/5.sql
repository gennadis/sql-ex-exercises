SELECT
  model,
  speed,
  hd
FROM
  pc
WHERE
  price < 600
  AND cd IN ('12x', '24x');