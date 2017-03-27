search _ [] = False
search x list =
    if x > y
       then search x ys2
       else if x < y
         then search x ys1
         else True
    where
        ys1 = take len list
        (y:ys2) = drop len list
        len = length list `div` 2

main :: IO ()
main = do
    let input = [1,2,3]
    print $ search 1 input

--- Good to note: try search 1 [2,12,1] ^^
