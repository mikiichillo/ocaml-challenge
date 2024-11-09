let parrot_trouble talk h =
  if h<0 || h>23 then None
  else if talk = true then if h<7 || h>20 then Some true
    else Some false
  else failwith "error"