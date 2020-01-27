# Lab 03

## Exercise 4
a function called myLength which works out how many elements are in a list. The empty list has no elements.
```
myLenght :: [a] -> Int
myLenght [] = 0
myLenght (x:xs) = 1 + myLenght xs
```

## Exercise 5 
Write a function called mySum which works out the sum of a list of integers. (Note mySum [1..n] == sumUpTo n if you have done it correctly.)
```
mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + mySum xs
```

## Exercise 6 
Write a function called myProduct which works out the product of a list of integers. 
```
myProduct :: [Int] -> Int
myProduct [] = 0
myProduct (x:xs) = x * myProduct xs
```
## Exercise 7 
Write an function called flipSign. This function should take a list of integers, and flip the sign of each of them (i.e. positive numbers become negative, and vice versa, whilst
0 stays as 0).
```
flipSign :: [Int] -> [Int]
flipSign [] = []
flipSign (x:xs) = (0-x) : flipSign xs
```

## Exercise 8
Write a function called addAtEnd. This function takes an element of type a, a list
of type a, and returns a list of type a. It takes the element given and adds it at the end of the
given list. For example, addAtEnd 0 [1..5] = [1,2,3,4,5,0]. You might find it helpful to
know that the list containing one object x is written as [x]]
```
addAtEnd :: a -> [a] -> [a]
addAtEnd x [] = [x]
addAtEnd x (y:ys) = y : addAtEnd x ys 
```
## Exercise 9 
(Harder) Write a function called append which takes two lists, and adds the first
list to the end of the second. You might like to use your function addAtEnd. For example,
append [1..5] [6..10] = [6,7,8,9,10,1,2,3,4,5].
```
```
## Exercise 10 
(Harder) Write a function called myReverse which takes a list and reverses it. You might like to use your function addAtEnd.
```
```
# Exercise 11
Write a function which takes a list and returns the same list where all elements
are unique. In other words, at each stage the function should check whether the first element is
in the remaining list (use the function elem) and only keep it if it does not appear. The type
signature you should use is:
uniqueList :: (Eq a) => [a] -> [a]
```
```

# Exercise 12 
Write a function subset which takes two lists and determines whether the elements of the first appear in the second. Remember that the empty set, ∅, is a subset of anything.
The type signature you should use is:
subset :: (Eq a) => [a] -> [a] -> Bool
You should now be able to define set equality as follows:
setEquality :: (Eq a) => [a] -> [a] -> Bool
setEquality xs ys = subset xs ys && subset ys xs
``` 
```

# Exercise 13 
Write a function for set intersection, called myIntersection’. Do not worry
about removing duplication: that is handled in the function myIntersection, already included
in your Haskell file.
```
```
