SELECT model,
    speed,
    hd
FROM pc
WHERE price < 600
    and cd in ('12x', '24x');