module Control.Monad.Composition.Three where


(===<<) :: Monad m =>
           (a -> b -> c -> m d)
        -> m a
        -> b -> c -> m d
(===<<) mf inp b c = inp >>= (\a -> mf a b c)

infixr 1 ===<<

(=.=<<) :: Monad m =>
           (a -> b -> c -> m d)
        -> m b
        -> a -> c -> m d
(=.=<<) mf inp a c = inp >>= (\b -> mf a b c)

infixr 1 =.=<<

(==.<<) :: Monad m =>
           (a -> b -> c -> m d)
        -> m c
        -> a -> b -> m d
(==.<<) mf inp a b = inp >>= mf a b

infixr 1 ==.<<
