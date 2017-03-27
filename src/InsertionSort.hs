sort l1  = insertMany l1 []

insertMany [] l2     = l2
insertMany (x:xs) l2 = insertMany xs $ insert x l2

insert :: (Ord a) => a -> [a] -> [a]
insert x []     = [x]
insert x (y:ys) =
    if x <= y
       then x:y:ys
       else y:insert x ys

