let is_even (x:int) : bool =
  not(x/2==0)

let win (a:int) (b:int) : int = 
  if (a>=1 && a<=5) then if (b>=1 && b<=5) then if is_even(a+b) then 1
                                                             else (-1)
                        else (1)
  else if (b>=1 && b<=5) then (-1)
  else 0