search x [] = False
search x (y:ys) =
    if x == y
       then True
       else search x ys

