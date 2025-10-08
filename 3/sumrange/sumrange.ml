let sumrange (a:int) (b:int) =
  if a > b then 0
  else (b * (b + 1) / 2) - ((a - 1) * a / 2)
