# Syntactic Differences of Idris compared to Haskell

*INCOMPLETE*

(Almost) *No type inference*. So we have to provide the type ourself.

*Typing with :* (and the :: operator is consequently used in lists and stuff)

```
x : Integer
x = 25 + 17
```

Default is *strict evaluation*. Lazyness can be used, we have a type for that.

Variables and types are in the same namespace, thus no uper/lower case rule. Nevertheless, usually types are in upper case and variables in lower case. Ah, and by the way, british English is preferred :-)

anonymous function with =>

Functions can only be used in a source file, after they have been defined.
(This can be bypassed locally using a 'mutual' block.)

There is a 'case' construct in Idris too, but for use dependent types there is 'with'.

Records, with a special syntax for nested ones.

Type classe parameters must be typed (if not of type Type). E.g.
```
class Funny (f : Type -> Type) where
  mappy : (a -> b) -> f a -> f b
```


As in Haskell, we have a value constructor [], but it is not a type constructor.

```
li : List Integer
li = 17 :: [25]
```

String is not List Char.