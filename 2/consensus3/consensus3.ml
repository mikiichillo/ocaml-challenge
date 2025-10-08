let consensus3 ((f0:'a->'b),(f1:'a->'b),(f2:'a->'b)) n : 'b option =
  let v0 = f0 n in
  let v1 = f1 n in
  let v2 = f2 n in
  if (v0 = v1) then Some v0
  else if (v1 = v2) then Some v1
  else if (v0 = v2) then Some v0
  else None
