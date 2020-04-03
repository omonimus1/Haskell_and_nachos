{--
    Exercise 1: 
        filter even [1..10]
        filter odd [1..50]

--}


{--
    Exercise 2: 
        forAllMapFilter isPrime [5..10] evaluates to False
        thereExistsMapFilter isPrime [5..10] evaluates to True
        forAllMapFilter odd (filter isPrime [1..10]) evaluates to False
--}

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


-- Exercise 3
{--
    [ x | x <- [30..50], odd x] 
    [x | x <- [40..80], odd x, isPrime x]
--}


-- Exercise 4
{--
    thereExistsListComprehension (=='e') "So no-one told you life was gonna be this way." evaulates to True
    forAllListComprehension even [10,20..190] evaluates to True 
--}


-- Exercise 5
{--
    map (subtract 1) (filter even [1..50]) 
    filter (not.even) [1..50]
--}


-- Exercise 6
{--
    map (subtract 1) [x | x <- [1..50], even x]
--}


-- Exercise 7
{--
    last (filter isPrime [1..200])
    last [x | x <- [1..200], isPrime x]
--}


-- Exercise 8
{--
    last (filter isPrime [1..200])
    last [x | x <- [1..200], isPrime x]
--}


-- Exercise 9 : Write a Line of code which doubles all of the Integers between 5 and 10 
--map (*2) [5..10]


-- Exercise 10: Use map to square the first 20 integers.
--map (^) [1..20]

