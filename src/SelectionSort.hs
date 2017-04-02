import           Data.List hiding (sort)

-- TODO: revert to MAXIMUM way
sort :: Ord a => [a] -> [a]
sort [x] = [x]
sort xs =
    minn : (sort rest)
    where
        minn = minimum xs
        rest = delete minn xs

main :: IO ()
main = do
    let list = [1,3,1,2,16,7]
    print $ sort list


