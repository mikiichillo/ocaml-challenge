let option_map f option =
  match option with
  | None -> None
  | Some x -> Some (f x)