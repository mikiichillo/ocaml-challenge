type suit = S | H | D | C;;
type card = Card of int * suit;;

let straight ((a:card), (b:card), (c:card), (d:card), (e:card)) = 
  let cards = [a;b;c;d;e] in
  let values = List.map (fun (Card (v, _)) -> v) cards in
  let values = List.sort compare values in
  
  let pairs = List.combine values (List.tl values) in

  List.for_all (fun (x, y) -> y = x + 1) pairs