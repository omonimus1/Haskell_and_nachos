{- Extra functions -}
divides :: Int -> Int -> Bool
divides m n = rem m n == 0

divides' :: Int -> Int -> Bool
divides' m n = rem n m == 0

isComposite :: Int -> Bool
isComposite n = foldl (||) False (map (divides n) [2..(n-1)])

isPrime :: Int -> Bool
isPrime n
        | n <=0 = error "Makes no sense"
        | otherwise = not (isComposite n)

elemAt :: Int -> [a] -> a
elemAt _ [] = error "No elements in vector"
elemAt n (x:xs)
        | n > length (x:xs) = error "Vector not long enough"
        | n == 1 = x
        | otherwise = elemAt (n-1) xs

headSafe :: [a] -> Maybe a
headSafe [] = Nothing
headSafe (x:xs) = Just x




elemAtSafe :: Int -> [a] -> Maybe a
elemAtSafe n xs
        | n > length xs || n <= 0 = Nothing
        | otherwise = Just (elemAt n xs)

safeSum :: [Int] -> Maybe Int
safeSum [] = Nothing
safeSum [x] = Just x
safeSum (x:xs) = case (safeSum xs) of
        Just n -> Just (n+x)
        Nothing -> Nothing


-- For lots of these questions, you will need to write helper functions.


{-
lastSafe :: [a] -> Maybe a
-}


{-
biggestPrime :: [Int] -> Maybe Int
-}


{-
safeMax :: (Ord a) => [a] -> Maybe a
-}


{-
biggestPrime2 :: [Int] -> Maybe Int
-}


{-
thereExistsWitness :: (a -> Bool) -> [a] -> Maybe a
-}


{-
forAllCounterexample :: (a -> Bool) -> [a] -> Maybe a
-}


{-
findIndex :: (Eq a) => a -> [a] -> Maybe Int
-}


{-
safeLast :: [a] -> Maybe a
-}


{-
removeLastSafe :: [a] -> Maybe [a]
-}
















