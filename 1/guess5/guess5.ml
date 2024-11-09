let guess5 n =
  if(n<1 || n>5) then failwith "Not valid"
  else 
    let r = Random.int(5) + 1 in
  if (n == r) then (true, r)
  else (false, r)