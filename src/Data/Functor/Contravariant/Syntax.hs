module Data.Functor.Contravariant.Syntax where

import Data.Functor.Contravariant

(<-$>) :: Contravariant f =>
          (a -> b)
       -> f b
       -> f a
(<-$>) = contramap

infixr 8 <-$>

(<-$$>) :: (Contravariant f0, Contravariant f1) =>
          (a -> b)
       -> f1 (f0 a)
       -> f1 (f0 b)
(<-$$>) = contramap . contramap

infixr 8 <-$$>

(<-$$$>) :: (Contravariant f0, Contravariant f1, Contravariant f2) =>
          (a -> b)
       -> f2 (f1 (f0 b))
       -> f2 (f1 (f0 a))
(<-$$$>) = contramap . contramap . contramap

infixr 8 <-$$$>

(<-$$$$>) :: (Contravariant f0, Contravariant f1, Contravariant f2, Contravariant f3) =>
          (a -> b)
       -> f3 (f2 (f1 (f0 a)))
       -> f3 (f2 (f1 (f0 b)))
(<-$$$$>) = contramap . contramap . contramap . contramap

infixr 8 <-$$$$>

(<-$$$$$>) :: (Contravariant f0, Contravariant f1, Contravariant f2, Contravariant f3, Contravariant f4) =>
          (a -> b)
       -> f4 (f3 (f2 (f1 (f0 b))))
       -> f4 (f3 (f2 (f1 (f0 a))))
(<-$$$$$>) = contramap . contramap . contramap . contramap . contramap

infixr 8 <-$$$$$>
