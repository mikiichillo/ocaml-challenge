type winner = Player | Computer | Tie ;;

let win (hp,gp) : (int*int)*winner =
  let hc = Random.int(5)+1 in
  let gc = Random.int(10)+1 in
  let sum = hp+hc in

  if(sum = gp && not (sum = gc)) then ((hc,gc),Player) 
  else if(not (sum = gp) && sum = gc) then ((hc,gc),Computer) 
  else ((hc,gc),Tie) 
  