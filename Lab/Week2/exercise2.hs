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

fakeFilter :: (a -> Bool) -> [a] -> [a]
fakeFilter f xs  = [x | x <- xs, f x]

forAll'' :: (Eq a) => (a -> Bool) -> [a] -> Bool
forAll'' f xs = (fakeFilter f xs) == xs

thereExists'' :: (Eq a) => (a -> Bool) -> [a] -> Bool
thereExists'' f xs = (fakeFilter f xs) /= []

forAllListComprehension :: (Eq a) => (a -> Bool) -> [a] -> Bool
forAllListComprehension f xs = [x | x <- xs, f x] == xs

thereExistsListComprehension :: (Eq a) => (a -> Bool) -> [a] -> Bool
thereExistsListComprehension f xs = ([x | x <- xs, f x]) /= []

forAllMapFilter :: (a -> Bool) -> [a] -> Bool
forAllMapFilter f xs = length (filter (==True) (map f xs)) == length xs

thereExistsMapFilter :: (a -> Bool) -> [a] -> Bool
thereExistsMapFilter f xs = (filter (==True) (map f xs)) /= []


