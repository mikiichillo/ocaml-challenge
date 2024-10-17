type vote = StrongRejec | WeakReject | WeakAccept | StrongAccept 

let decide_exam (v1:vote) (v2:vote) (v3:vote) : bool =
  if (v1==StrongRejec || v2==StrongRejec || v3==StrongRejec)
    then false
else if (v1 >= WeakAccept)
      then if (v2 >= WeakAccept || v3 >= WeakAccept) then true
      else false
    else if (v2 >= WeakAccept)
      then if (v1 >= WeakAccept || v3 >= WeakAccept) then true
      else false
else if (v3 >= WeakAccept)
      then if (v2 >= WeakAccept || v1 >= WeakAccept) then true
      else false
else if (v1==WeakReject && v2==WeakReject && v3==WeakReject)
    then false
else false