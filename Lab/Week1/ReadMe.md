# Week1 Exercises (Completed on Windows Environment)

## Get started : import a module (.hs file)


Right click on the file => Properties
- Copy the absolute file path provided by the voice: "Location: " and add "\youFileName" to the path.
```
:load C:\\Users\pc\Desktop\Haskell\Lab\Week1\Exercise1
```

Of course, Exercise1 is a .sh file, but if you will specific the file extension using the ```:load``` command, you will probably get the error ```File or module not found```.

File correctly loaded :
```[1 of 1] Compiling Main( C:\\Users\pc\Desktop\Haskell\Lab\Week1\Exercise1.hs, interpreted)
Ok, one module loaded.
```

Logic operations review:

### Conjuction

```
p ^ q  
p & q
p and q
p wedge q
```

### Negation

```
not p

```
### Disjunction
Disjunction is an inclusive or. The result is false just if all the input are false.

* Syntax:
```
pVq
p|q
"vee"
```


* Truth table
```
p   q   pVq
0   0    0
1   0    1
0   1    1
1   1    1
```

### Exlusive OR
The result is ```False``` just when both input are False or both of them are True.
```
(pVq)^q
```

### Converses
Convers of ```q -> p``` is ```p -> q ```

### Contrapositive
Contrapositive of ```p -> q``` is ```not q -> not p ```

### Morgan rules

```
not (p ^ q) = (not p) V (not q)
not (p V q) = (not p) ^ (not q)
```


### Exercises Set  1

1. 8 > 9
2. 9 >= 0
3. True∧(True∨False)
4. Not not True is equal to True.
5. The number of b’s in “It was the best of times, it was the blurst of times” is 6.
6. The number of 2s in 5438275439872242142 is less than 3. (Hint: do not think of them as
numbers, but characters!)
7. There are more t’s in “The Importance of Being Earnest” than “The Picture of Dorian
Gray”.
8. The number of e’s in “Gadsby” is less than the number of s’s in “The quick brown fox
jumped over the lazy dog”.

The True Statements are: 1 - 3 - 4 - 7.
