let is_posfrac (a,b) =
  if(a>0) 
    then if (b>0) then true
          else if (b == 0) then false
                else false
  else if (b>0) then false
        else if (b == 0) then false
              else true

let compare_posfrac (a,b) (c,d) =
  if is_posfrac(a,b) && is_posfrac(c,d) then
    let right = a/b in
    let left = c/d in
    if right == left then 0
    else if right > left then 1
    else (-1)
  else failwith "not positive"