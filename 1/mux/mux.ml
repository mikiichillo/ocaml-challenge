let mux2a (s0:bool) (a:bool) (b:bool) : bool =
  if s0 then a
  else b

let mux2b (s0:bool) (a:bool) (b:bool) : bool =
    (s0&&a)||((not s0)&&b)

let mux2c (s0:bool) (a:bool) (b:bool) : bool =
    match (s0) with
    | true -> a
    | false -> b

let mux4a (s1:bool) (s0:bool) (a0:bool) (a1:bool) (a2:bool) (a3:bool) : bool =
    if s0 then if s1 then a3
                else a1
        else  if s1 then a2
                   else a0

let mux4b (s1:bool) (s0:bool) (a0:bool) (a1:bool) (a2:bool) (a3:bool) : bool =
  mux2a (s0) (mux2a s1 a0 a1) (mux2a s1 a2 a3)