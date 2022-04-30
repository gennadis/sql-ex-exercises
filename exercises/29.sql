SELECT Income_o.point,
  Income_o.date,
  SUM(inc),
  SUM(out)
FROM Income_o
  LEFT JOIN Outcome_o ON Income_o.point = Outcome_o.point
  AND Income_o.date = Outcome_o.date
GROUP BY Income_o.point,
  Income_o.date
UNION
SELECT Outcome_o.point,
  Outcome_o.date,
  SUM(inc),
  SUM(out)
FROM Outcome_o
  LEFT JOIN Income_o ON Income_o.point = Outcome_o.point
  AND Income_o.date = Outcome_o.date
GROUP BY Outcome_o.point,
  Outcome_o.date