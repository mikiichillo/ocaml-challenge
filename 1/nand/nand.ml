let nand1 (a : bool) (b : bool) : bool = not (a && b)

let nand2 (a : bool) (b : bool) : bool = if a then (*[a] è vero*) (if b then (*[b] è vero*) false else true) else (*[a] è falso*) false

let nand3 (a : bool) (b : bool) : 
bool = 
  match(a,b) with 
  | (true, false) -> true
  | (false, true) -> true
  | (true, true) -> false
  | (false, false) -> true
  
