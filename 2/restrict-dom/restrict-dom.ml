let restrict (f: 'a -> 'b) (p: 'a -> bool) = 
  let g x = 
    if p x = true then Some (f x) else None
  in
  g
;;