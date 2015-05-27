composition-extra
=================

> Some handy tools for working with algebraic structures.

## Functors

We can `fmap` more deeply with Applicative-style syntax:

```haskell
(+1) <$$> [Just 1, Nothing, Just 2]
> [Just 2, Nothing, Just 3]
```

Likewise, via [contravariant](http://hackage.haskell.org/package/contravariant)
functors:

```haskell
:t (-2) <-$$$> (Predicate $ (==) Predicate $ (==) Predicate $ (==) 5)
> :: ( Eq b
     , Eq (Predicate b)
     , Eq (Predicate (Predicate b))
     , Num b
     , Num (a -> Predicate b)
     , Contravariant ((->) (Predicate (Predicate b) -> Bool))
     ) => Predicate (Predicate a)
```

> (it's not that useful)

## Functions

You can slyly prepend unanry functions to arbitrary arguments (contravariant function
compositon):

```haskell
before :: [q] -> d
func2 :: c -> d -> e
func3 :: b -> c -> d -> e
func4 :: a -> b -> c -> d -> e

before -.* func2 :: c -> [q] -> e
before -.** func3 :: b -> c -> [q] -> e
before -.*** func4 :: a -> b -> c -> [q] -> e
```

## Monads

We can also do weird `liftM`-ish, applicative-y stuff, too:

```haskell
import Data.Compositon -- from the `compositon` package

(return .: (+)) ==<< mx =<< my
mx >>==== (return .:: func4) -- apply to 4th arg
```
