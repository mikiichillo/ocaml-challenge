let rec countzero (f: int-> int) (a:int) (b:int) : int=
  match (f a) with
  | 0 -> if (a > b) then failwith "Input not valid" else if (a < b) then countzero (f) (a+1) (b) + 1 else if (a = b) then 1 else 0
  | _ -> if (a > b) then failwith "Input not valid" else if (a < b) then countzero (f) (a+1) (b) else if (a = b) then 0 else 0