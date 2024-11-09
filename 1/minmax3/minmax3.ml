let minmax3 a b c =
  if a > b && a > c then if b > c then (c,a)
    else (b,a)
  else if b>a && b>c then if a>c then (c,b)
    else (a,b)
  else if c>a && c>b then if a>b then (b,c)
  else (a,c)
else failwith "errore"
