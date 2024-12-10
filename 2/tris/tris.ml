let tris (a,b,c,d) =
  if a = b then if b = c then true
    else if b = d then true
    else false
  else if c = d then if c = a then true
    else if c = b then true
    else false
  else false

  let hand () =
    Random.self_init ();
    (Random.int 10 + 1, Random.int 10 + 1, Random.int 10 + 1, Random.int 10 + 1)