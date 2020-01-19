sumUpTo :: Int -> Int 
sumUpTo 0 = 0
sumUpTo n = n + sumUpTo (n-1)

fac :: Int -> Int
fac 0 = 1
fac n = n * fac (n-1)

{-
doubleMe :: Int -> Int
doubleMe 0 = 
doubleMe n = 
-}

{- 
myLength :: [a] -> Int
myLength [] = 
myLength (x:xs) =
-}

{-
mySum :: [Int] -> Int
-}

{-
myProduct :: [Int] -> Int
-}

{-
flipSign :: [Int] -> [Int]
flipSign [] =
flipSign (x:xs) = 
-}

{-
addAtEnd :: a -> [a] -> [a]
addAtEnd x [] =
addAtEnd x (y:ys) = 
-}

{-
append :: [a] -> [a] -> [a]
append [] ys = 
append (x:xs) ys =
-}

{-
myReverse :: [a] -> [a]
-}

{- 
uniqueList :: (Eq a) => [a] -> [a]
-}

{-
subset :: (Eq a) => [a] -> [a] -> Bool
subset [] ys =
subset (x:xs) ys
	| elem x ys = 
	| otherwise = 

setEquality :: (Eq a) => [a] -> [a] -> Bool
setEquality xs ys = subset xs ys && subset ys xs
-}



{-
myIntersection' :: (Eq a) => [a] -> [a] -> [a]
myIntersection' [] ys = 
myIntersection' (x:xs) ys 
	| elem x ys = 
	| otherwise = 

myIntersection :: (Eq a) => [a] -> [a] -> [a]
myIntersection xs ys = uniqueList (myIntersection' xs ys)

union :: (Eq a) => [a] -> [a] -> [a]
union xs ys = uniqueList (xs ++ ys)
-}

intersection :: (Eq a) => [a] -> [a] -> [a]
intersection xs ys = [z | z <- xs, elem z ys]




