module Data.Composition.Contravariant where

(-.) :: (a -> b) -> (b -> c) -> a -> c
(-.) g f a = f $ g a

(-.:) :: (b -> c) -> (a -> c -> d) -> a -> b -> d
(-.:) g f a b = f a $ g b

(-.::) :: (c -> d) -> (a -> b -> d -> e) -> a -> b -> c -> e
(-.::) g f a b c = f a b $ g c

(-.:::) :: (d -> e) -> (a -> b -> c -> e -> f) -> a -> b -> c -> d -> f
(-.:::) g f a b c d = f a b c $ g d

(-.::::) :: (e -> f) -> (a -> b -> c -> d -> f -> g) -> a -> b -> c -> d -> e -> g
(-.::::) g f a b c d e = f a b c d $ g e
