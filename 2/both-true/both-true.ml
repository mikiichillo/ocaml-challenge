let both_true p q x = 
  match (p(x), q(x)) with
  | true, true -> true
  | _, _ -> false