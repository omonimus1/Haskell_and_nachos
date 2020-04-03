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


findI' :: (Eq a) => a -> [a] -> Int
findI' x [] = error "Not found"
findI' x (y:ys)
        | x == y = 1
        | otherwise = 1 + findI' x ys

findI :: (Eq a) => a -> [a] -> Maybe Int
findI x ys
        | elem x ys = Just (findI' x ys)
        | otherwise = Nothing

elemAtSafe :: Int -> [a] -> Maybe a
elemAtSafe n xs
        | n > length xs || n <= 0 = Nothing
        | otherwise = Just (elemAt n xs)


headSafe :: [a] -> Maybe a
headSafe [] = Nothing
headSafe (x:xs) = Just x

lastSafe :: [a] -> Maybe a
lastSafe [] = Nothing
lastSafe xs = Just (last xs)

safeLast :: [a] -> Maybe a
safeLast [] = Nothing
safeLast [x] = Just x
safeLast (x:xs) = case (safeLast xs) of
        Just n -> Just n
        Nothing -> Nothing

biggestPrime :: [Int] -> Maybe Int
biggestPrime xs = lastSafe (filter isPrime xs)

safeSum :: [Int] -> Maybe Int
safeSum [] = Nothing
safeSum [x] = Just x
safeSum (x:xs) = case (safeSum xs) of
        Just n -> Just (n+x)
        Nothing -> Nothing

removeLastSafe :: [a] -> Maybe [a]
removeLastSafe [] = Nothing
removeLastSafe [x] = Just []
removeLastSafe (x:xs) = case (removeLastSafe xs) of
        Just ys -> Just (x:ys)
        Nothing -> Nothing

find' :: (a -> Bool) -> [a] -> a -- to be used when we know f x is true for some x <- xs
find' f (x:xs)
        | f x = x
        | otherwise = find' f xs

findFalse :: (a -> Bool) -> [a] -> a -- to be used when we know f x is false for some x <- xs
findFalse f (x:xs)
        | not (f x) = x
        | otherwise = findFalse f xs

thereExists :: (a -> Bool) -> [a] -> Bool -- any of the thereExists functions will work here.
thereExists f xs = foldr (||) False (map f xs)

thereExistsWitness :: (a -> Bool) -> [a] -> Maybe a
thereExistsWitness f xs
        | thereExists f xs = Just (find' f xs)
        | otherwise = Nothing

forAll :: (a -> Bool) -> [a] -> Bool -- any of the forAll functions will work here.
forAll f xs = foldr (&&) True (map f xs)

forAllCounterexample :: (a -> Bool) -> [a] -> Maybe a
forAllCounterexample f xs
        | forAll f xs = Nothing
        | otherwise = Just (findFalse f xs)

maxOfList' :: (Ord a) => [a] -> a -- must be used on non-empty list
maxOfList' [x] = x
maxOfList' (x:xs)
        | x >= maxOfList' xs = x
        | otherwise = maxOfList' xs

safeMax :: (Ord a) => [a] -> Maybe a
safeMax [] = Nothing
safeMax xs = Just (maxOfList' xs)

biggestPrime2 :: [Int] -> Maybe Int
biggestPrime2 xs = safeMax (filter isPrime xs)

