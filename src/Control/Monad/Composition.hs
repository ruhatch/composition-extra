module Control.Monad.Composition
  ( module X
  , (>>==)
  , (>>===)
  , (>>====)
  , (>>=====)
  , (>>======)
  ) where

import Control.Monad.Composition.Two as X
import Control.Monad.Composition.Three as X
import Control.Monad.Composition.Four as X
import Control.Monad.Composition.Five as X
import Control.Monad.Composition.Six as X



(>>==) :: Monad m =>
          m b
       -> (a -> b -> m c)
       -> a -> m c
(>>==) mb f a = f a =<< mb

infixl 1 >>==

(>>===) :: Monad m =>
           m c
        -> (a -> b -> c -> m d)
        -> a -> b -> m d
(>>===) mc f a b = f a b =<< mc

infixl 1 >>===

(>>====) :: Monad m =>
            m d
         -> (a -> b -> c -> d -> m e)
         -> a -> b -> c -> m e
(>>====) md f a b c = f a b c =<< md

infixl 1 >>====

(>>=====) :: Monad m =>
             m e
          -> (a -> b -> c -> d -> e -> m f)
          -> a -> b -> c -> d -> m f
(>>=====) me f a b c d = f a b c d =<< me

infixl 1 >>=====

(>>======) :: Monad m =>
              m f
           -> (a -> b -> c -> d -> e -> f -> m g)
           -> a -> b -> c -> d -> e -> m g
(>>======) mf f a b c d e = f a b c d e =<< mf

infixl 1 >>======
