countElems :: (Eq a) => a -> [a] -> Int
countElems x xs = length $ filter (==x) xs


exactlyTrueIn :: Int -> [Bool] -> Bool
exactlyTrueIn n xs = length (filter (==True) xs) == n

exactlyTrueIn1 :: Int -> [Bool] -> Bool
exactlyTrueIn1 n xs = length (filter (==True) xs) >= n

exactlyTrueIn2 :: Int -> [Bool] -> Bool
exactlyTrueIn2 n xs = length (filter (==True) xs) <= n

exactlyTrueIn3 :: Int -> [Bool] -> Bool
exactlyTrueIn3 n xs = length (filter (==True) xs) > n

exactlyTrueIn4 :: Int -> [Bool] -> Bool
exactlyTrueIn4 n xs = length (filter (==True) xs) < n


-- The note equal operator in Haskell is: /=
exactlyTrueIn5 :: Int -> [Bool] -> Bool
exactlyTrueIn5 n xs = length (filter (==True) xs) /= n

exactlyTrueIn6 :: Int -> [Bool] -> Bool
exactlyTrueIn6 n xs = length (filter (==False) xs) == n

-- To fix
--exactlyGivenIn :: (Eq a) -> Int -> a -> [a] -> Bool
--exactlyGivenIn n a = length (filter (==True) a) == n
