let best_offer (a: int option) (b :int option) (c : int option) : int option =
  if (a > b && a > c) then a
  else if (b > a && b > c) then b
  else if (c > a && c > b) then c
  else a