module Control.Composition.Two where

(==<<) :: Monad m =>
          (a -> b -> m c)
       -> m a
       -> b -> m c
(==<<) mf inp b = x >>= (`mf` b)

(=.<<) :: Monad m =>
          (a -> b -> mc)
       -> m b
       -> a -> m c
(=.<<) mf inp a = mf a =<< inp
