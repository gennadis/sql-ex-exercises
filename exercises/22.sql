SELECT speed,
  AVG(price)
FROM pc
WHERE speed > 600
GROUP BY speed