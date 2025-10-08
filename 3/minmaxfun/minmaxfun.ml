let minmaxfun (f: int -> 'a) (a: int) (b: int) : ('a * 'a) option =
  if a > b then None 
  else
  let rec aux x c_max c_min =
    if x > b then (c_max, c_min) else
    let fx = f x in
    let n_max = if compare fx c_max > 0 then fx else c_max in
    let n_min = if compare fx c_min < 0 then fx else c_min in
    aux (x+1) n_max n_min
  in
  Some (aux (a+1) (f a )(f a))