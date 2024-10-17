type season = Spring | Summer | Autumn | Winter

let squirrel_play (h:int) (s:season) : bool = 
  if(h>=15)
    then if(s == Summer) then if(h<=35) then true
            else false
          else if(h<=30) then true
                else false
  else false