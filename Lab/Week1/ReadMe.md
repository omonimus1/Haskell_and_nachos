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
