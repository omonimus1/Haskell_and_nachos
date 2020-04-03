myAnd :: Bool -> Bool -> Bool
myAnd False _ = False
myAnd True x = x

mySnd :: (a,b) -> a
mySnd (_,y) = y

ignoreButN :: Int -> a -> a -> a -> Maybe a
ignoreButN 1 x _ _ = Just x
ignoreButN 2 _ y _ = Just y
ignoreButN 3 _ _ z = Just z
ignoreButN n _ _ _ = Nothing

strange :: [Int] -> [Int]
strange xs = map calculate xs
        where calculate x = x^2+4*x+1

strange2 :: [Int] -> [Int]
strange2 xs = map (\x -> x^2 +4*x+1) xs

absPlusOne :: [Int] -> [Int]
absPlusOne xs = map absplus xs
        where absplus x = abs x + 1

absPlusOne2 :: [Int] -> [Int]
absPlusOne2 xs = map (\x -> abs x + 1) xs

addPairs :: [(Int,Int)] -> [Int]
addPairs xs = map addPair xs
        where addPair (x,y) = x+y

addPairs2 :: [(Int,Int)] -> [Int]
addPairs2 = map (\(x,y) -> x+y)

howMany2 :: (Eq a) => a -> [a] -> Int
howMany2 x ys = foldl (\y z -> if x == z then y+1 else y) 0 ys

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = (lessThan xs) ++ [x] ++ (greaterThan xs)
        where lessThan xs = quickSort (filter (<x) xs)
              greaterThan xs = quickSort (filter (>=x) xs)

quickSort2 :: (Ord a) => [a] -> [a]
quickSort2 [] = []
quickSort2 (x:xs) = (lessThan xs) ++ [x] ++ (greaterThan xs)
        where lessThan xs = quickSort2 (filter (<x) xs)
              greaterThan xs = quickSort2 (filter (>x) xs)