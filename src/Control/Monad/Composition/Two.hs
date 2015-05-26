module Control.Monad.Composition.Two where

(==<<) :: Monad m =>
          (a -> b -> m c)
       -> m a
       -> b -> m c
(==<<) mf x b = x >>= (`mf` b)

infixr 1 ==<<

(=.<<) :: Monad m =>
          (a -> b -> m c)
       -> m b
       -> a -> m c
(=.<<) mf x a = mf a =<< x

infixr 1 =.<<
