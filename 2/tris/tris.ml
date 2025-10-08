let tris (a,b,c,d) =
  let lista = [a;b;c;d] in 
  List.exists(fun x -> List.length(List.filter((=) x) lista) >= 3) lista
;;

  let hand () =
    Random.self_init ();
    (Random.int 10 + 1, Random.int 10 + 1, Random.int 10 + 1, Random.int 10 + 1)