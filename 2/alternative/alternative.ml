let ( <|> ) (x: 'a option) (y: 'a option) = 
  match x, y with
  | Some x, _ -> Some x
  | None, Some y -> Some y
  | None, None -> None
;;