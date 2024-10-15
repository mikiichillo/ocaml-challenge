let fun1 (a : int) (b : int) (c : int) : string =
  if (a < 1 || a > 5 || b < 1 || b > 5 || c < 1 || c > 5) 
    then "Error"
 else match (a,b,c) with
        | (5,5,5) -> "Masterpiece"
        | (5,5,4) -> "Highly Recommended"
        | (5,4,5) -> "Highly Recommended"
        | (4,5,5) -> "Highly Recommended"

        | (5,5,3) -> "Recommended"
        | (5,3,5) -> "Recommended"
        | (3,5,5) -> "Recommended"

        | (4,5,3) -> "Recommended"
        | (5,4,3) -> "Recommended"
        | (4,4,3) -> "Recommended"

        | (4,3,5) -> "Recommended"
        | (5,3,4) -> "Recommended"
        | (4,3,4) -> "Recommended"

        | (3,4,5) -> "Recommended"
        | (3,5,4) -> "Recommended"
        | (3,4,4) -> "Recommended"

        | _ -> "Mixed Reviews"