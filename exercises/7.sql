SELECT a.model,
  price
FROM (
    SELECT model,
      price
    FROM PC
    UNION
    SELECT model,
      price
    FROM Laptop
    UNION
    SELECT model,
      price
    FROM Printer
  ) AS a
  JOIN Product p ON a.model = p.model
WHERE p.maker = 'B';