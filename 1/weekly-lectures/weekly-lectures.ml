type weekday = Mo| Tu | We | Th | Fr
type course = ALF | LIP
let fun1 (a : weekday) (b : course) : bool =
  if (a<Mo || a>Fr ||b<ALF || b>LIP)
    then false
  else
  if(a == Tu || a == Th || a == Fr)
    then if (b == ALF)
          then true
        else false
  else if (b == LIP)
        then true
       else false