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

let poker ((a:card), (b:card), (c:card), (d:card), (e:card)) = 
  let cards = [a;b;c;d;e] in
  let values = List.map (fun (Card (v, _)) -> v) cards in
  let count v = List.length(List.filter((=) v) values ) in
  List.exists ( fun v -> count v = 4) values
