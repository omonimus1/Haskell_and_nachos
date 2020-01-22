# Filter and map

Filter is an Haskell function that takes two inputs, the first, a boolean condition and the second a list of objects where will be applied the boolean condition. 

We can see from the following example, that filter will clearly say that the list of objects (int this case integers in input), has 3 elements that satisfies the boolean condition (that are equals to 2). 
```
filter (==2) [1,2,3,4,5,2,2]
[2,2,2]
```
```
filter (==8) [1,2,3,4,5,2,2]
[]
```


Map is a function that returns a list constructed by appling a function (the first argument) to all items in a list passed as the second 
```
map (+1) [1,2,3]
[2,3,4]
```

