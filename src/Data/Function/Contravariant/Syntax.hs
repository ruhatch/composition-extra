module Data.Function.Contravariant.Syntax where

(-.) :: (a -> b)
     -> (b -> c)
     -> a -> c
(-.) = flip (.)

(-.:) :: (b -> c)
      -> (a -> c -> d)
      -> a -> b -> d
(-.:) p q a b = q a $ p b

(-.:.) :: (c -> d)
       -> (a -> b -> d -> e)
       -> a -> b -> c -> e
(-.:.) p q a b c = q a b $ p c

(-.::) :: (d -> e)
       -> (a -> b -> c -> e -> f)
       -> a -> b -> c -> d -> f
(-.::) p q a b c d = q a b c $ p d

(-.::.) :: (e -> f)
        -> (a -> b -> c -> d -> f -> g)
        -> a -> b -> c -> d -> e -> g
(-.::.) p q a b c d e = q a b c d $ p e

(-.:::) :: (f -> g)
        -> (a -> b -> c -> d -> e -> g -> h)
        -> a -> b -> c -> d -> e -> f -> h
(-.:::) p q a b c d e f = q a b c d e $ p f

(-.:::.) :: (g -> h)
         -> (a -> b -> c -> d -> e -> f -> h -> i)
         -> a -> b -> c -> d -> e -> f -> g -> i
(-.:::.) p q a b c d e f g = q a b c d e f $ p g

(-.::::) :: (h -> i)
         -> (a -> b -> c -> d -> e -> f -> g -> i -> j)
         -> a -> b -> c -> d -> e -> f -> g -> h -> j
(-.::::) p q a b c d e f g h = q a b c d e f g $ p h

(-.::::.) :: (i -> j)
          -> (a -> b -> c -> d -> e -> f -> g -> h -> j -> k)
          -> a -> b -> c -> d -> e -> f -> g -> h -> i -> k
(-.::::.) p q a b c d e f g h i = q a b c d e f g h $ p i
