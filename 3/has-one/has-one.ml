let rec has_one (n:int) =
  if n<0 then failwith "Number is negative" else
    if n = 0 then false else
      if n mod 10 = 1 then true else has_one (n/10)