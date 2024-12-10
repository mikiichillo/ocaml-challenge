type suit = S | H | D | C;;
type card = Card of int * suit;;

let rndSuit() =
  match Random.int 4 with
  | 0 -> S
  | 1 -> H
  | 2 -> D
  | 3 -> C
  | _ -> failwith "Error"

let rndNumber() = Random.int 13 + 1

let rndCard() = Card (rndNumber(), rndSuit())
let rndHand() =
  (rndCard(), rndCard(), rndCard(), rndCard(), rndCard())

let poker (a, b, c, d, e) = 
