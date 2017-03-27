sort :: (Ord a) => [a] -> Int -> [a]
sort l1 n
  | n == len = l1
  | otherwise = sort (swap l1) (n+1)
  where len = length l1

swap :: (Ord a) => [a] -> [a]
swap [x] = [x]
swap (x:y:ys) =
    if x <= y
       then x:swap (y:ys)
       else y:swap (x:ys)
