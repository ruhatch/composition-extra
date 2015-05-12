module Data.Composition.Monad where

(>>==) :: Monad m =>
          m b
       -> (a -> b -> m c)
       -> a -> m c
(>>==) mb f a = f a =<< mb

(>>===) :: Monad m =>
           m c
        -> (a -> b -> c -> m d)
        -> a -> b -> m d
(>>===) mc f a b = f a b =<< mc

(>>====) :: Monad m =>
            m d
         -> (a -> b -> c -> d -> m e)
         -> a -> b -> c -> m e
(>>====) md f a b c = f a b c =<< md

(>>=====) :: Monad m =>
             m e
          -> (a -> b -> c -> d -> e -> m f)
          -> a -> b -> c -> d -> m f
(>>=====) me f a b c d = f a b c d =<< me

(>>======) :: Monad m =>
              m f
           -> (a -> b -> c -> d -> e -> f -> m g)
           -> a -> b -> c -> d -> e -> m g
(>>======) mf f a b c d e = f a b c d e =<< mf


(==<<) :: Monad m =>
          (a -> b -> m c)
       -> m b
       -> a -> m c
(==<<) = flip (>>==)

(===<<) :: Monad m =>
           (a -> b -> c -> m d)
        -> m c
        -> a -> b -> m d
(===<<) = flip (>>===)

(====<<) :: Monad m =>
            (a -> b -> c -> d -> m e)
         -> m d
         -> a -> b -> c -> m e
(====<<) = flip (>>====)

(=====<<) :: Monad m =>
             (a -> b -> c -> d -> e -> m f)
          -> m e
          -> a -> b -> c -> d -> m f
(=====<<) = flip (>>=====)

(======<<) :: Monad m =>
              (a -> b -> c -> d -> e -> f -> m g)
           -> m f
           -> a -> b -> c -> d -> e -> m g
(======<<) = flip (>>======)
