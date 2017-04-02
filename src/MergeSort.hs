sort :: Ord t => [t] -> [t]
sort [] = []
sort [x] = [x]
sort l1 =  merge (sort lf) (sort ls)
    where
        len = length l1 `div` 2
        lf = take len l1
        ls = drop len l1

merge :: Ord a => [a] -> [a] -> [a]
merge [] l = l
merge l [] = l
merge (x:xs) (y:ys)
    | x <= y = x: merge xs (y:ys)
    | y < x = y: merge ys (x:xs)

main :: IO ()
main = do
    let list = [1,4,5,2,3,19,8]
    print $ sort list
