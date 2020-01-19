{- Use two clauses -}
-- myAnd :: Bool -> Bool -> Bool

{- Use one clause -}
-- mySnd :: (a,b) -> a

{- Use four clauses -}
-- ignoreButN :: Int -> a -> a -> a -> Maybe a


strange :: [Int] -> [Int]
strange xs = map calculate xs
        where calculate x = x^2+4*x+1

strange2 :: [Int] -> [Int]
strange2 xs = map (\x -> x^2 +4*x+1) xs

-- use where
-- absPlusOne :: [Int] -> [Int]

-- use an anonymous function
-- absPlusOne2 :: [Int] -> [Int]

-- use where
-- addPairs :: [(Int,Int)] -> [Int]

-- use an anonymous function
-- addPairs2 :: [(Int,Int)] -> [Int]

-- use an anonymous function
-- howMany2 :: (Eq a) => a -> [a] -> Int


quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = (lessThan xs) ++ [x] ++ (greaterThan xs)
        where lessThan xs = quickSort (filter (<x) xs)
              greaterThan xs = quickSort (filter (>=x) xs)

-- quickSort2 :: (Ord a) => [a] -> [a]

