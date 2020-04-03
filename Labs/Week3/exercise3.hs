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


addAtEnd :: a -> [a] -> [a]
addAtEnd x [] = [x]
addAtEnd x (y:ys) = y : addAtEnd x ys 



append :: [a] -> [a] -> [a]
append [] ys = ys
append (x:xs) ys = append xs (addAtEnd x ys)

{-
myReverse :: [a] -> [a]
-}

-- Two tabs or it will probleably give error
uniqueList :: (Eq a) => [a] -> [a]
uniqueList [] = []
uniqueList (x:xs)
        | elem x xs = uniqueList xs
        | otherwise = x : uniqueList xs

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




