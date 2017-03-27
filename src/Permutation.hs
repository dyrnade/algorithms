permutation :: (Eq a) => [a] -> [a] -> Bool
permutation l1 l2 =
    length l1 == length l2
    && searchall l1 l2

searchall :: (Eq a) => [a] -> [a] -> Bool
searchall [] l2 = True
searchall (y:ys) l2 =
    search y l2 && searchall ys l2

search :: (Eq a) => a -> [a] -> Bool
search x [] = False
search x (y:ys) =
    if x == y
       then True
       else search x ys

main :: IO ()
main = do
    let list1 = [1,3,5,7]
    let list2 = [5,1,3,7]
    print $ permutation list1 list2
