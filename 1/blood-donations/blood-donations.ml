type blood_group = A | B | AB | O

let check_groups x y =
  match (x,y) with
  | O, _ -> true
  | B, AB -> true
  | B, B -> true
  | A, AB -> true
  | A, A -> true
  | AB, AB -> true
  | _, _ -> false