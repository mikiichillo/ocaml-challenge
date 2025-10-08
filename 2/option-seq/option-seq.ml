let ( <*> ) f_opt g_opt =
  match f_opt, g_opt with
  | Some f, Some g -> Some (f g)
  | _ -> None