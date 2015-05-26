module Control.Monad.Composition.Five where


(=====<<) :: Monad m =>
             (a -> b -> c -> d -> e -> m f)
          -> m a
          -> b -> c -> d -> e -> m f
(=====<<) mf x b c d e = x >>= (\a -> mf a b c d e)

(=.===<<) :: Monad m =>
             (a -> b -> c -> d -> e -> m f)
          -> m b
          -> a -> c -> d -> e -> m f
(=.===<<) mf x a c d e = x >>= (\b -> mf a b c d e)

(==.==<<) :: Monad m =>
             (a -> b -> c -> d -> e -> m f)
          -> m c
          -> a -> b -> d -> e -> m f
(==.==<<) mf x a b d e = x >>= (\c -> mf a b c d e)

(===.=<<) :: Monad m =>
             (a -> b -> c -> d -> e -> m f)
          -> m d
          -> a -> b -> c -> e -> m f
(===.=<<) mf x a b c e = x >>= (\d -> mf a b c d e)

(====.<<) :: Monad m =>
             (a -> b -> c -> d -> e -> m f)
          -> m e
          -> a -> b -> c -> d -> m f
(====.<<) mf x a b c d = x >>= mf a b c d
