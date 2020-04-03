{-

Indicate which one is going to be evaluated and give result True

8 >= 9 : Returns False
9 >= 0 : Returns True
True∧(True∨False) : evaluated True
Not not True : evaluated True.

The number of b’s in “It was the best of times, it was the blurst of times” is 6. => Evaluated False
The number of 2s in 5438275439872242142 is less than 3. (Hint: do not think of them as numbers, but characters!) -> Evaluated False
There are more t’s in “The Importance of Being Earnest” than “The Picture of Dorian
Gray”. => Evaluated True
The number of e’s in “Gadsby” is less than the number of s’s in “The quick brown fox jumped over the lazy dog”. => Evaluated False

The True Statements are: 2 - 3 - 4 - 7.
-}

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


--exactlyGivenIn :: (Eq a) -> Int -> a -> [a] -> Bool
exactlyGivenIn n b xs = length (filter (==b) xs) == n
