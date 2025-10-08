let rev (l: 'a list) : 'a list =
  let rec aux lista = function
    | [] -> lista
    | x::xs -> aux (x::lista) xs
  in
  aux [] l