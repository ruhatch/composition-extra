module Control.Monad.Composition.Two where

(==<<) :: Monad m =>
          (a -> b -> m c)
       -> m a
       -> b -> m c
(==<<) mf x b = x >>= (`mf` b)

(=.<<) :: Monad m =>
          (a -> b -> m c)
       -> m b
       -> a -> m c
(=.<<) mf x a = mf a =<< x
