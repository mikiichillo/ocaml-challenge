let dice p =
  if p < 0 || p > 100 then
    invalid_arg "dice: probability must be between 0 and 100";
  let d = Random.int 100 in  (* uniform 0..99 *)
  if d < p then 6
  else
    let r = (d - p) / ((100 - p) / 5) in
    r + 1