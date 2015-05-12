module Data.Composition.Functor where

(<$$>) :: (Functor f0, Functor f1) =>
          (a -> b)
       -> f1 (f0 a)
       -> f1 (f0 b)
(<$$>) = fmap . fmap

(<$$$>) :: (Functor f0, Functor f1, Functor f2) =>
          (a -> b)
       -> f2 (f1 (f0 a))
       -> f2 (f1 (f0 b))
(<$$$>) = fmap . fmap . fmap

(<$$$$>) :: (Functor f0, Functor f1, Functor f2, Functor f3) =>
          (a -> b)
       -> f3 (f2 (f1 (f0 a)))
       -> f3 (f2 (f1 (f0 b)))
(<$$$$>) = fmap . fmap . fmap . fmap

(<$$$$$>) :: (Functor f0, Functor f1, Functor f2, Functor f3, Functor f4) =>
          (a -> b)
       -> f4 (f3 (f2 (f1 (f0 a))))
       -> f4 (f3 (f2 (f1 (f0 b))))
(<$$$$$>) = fmap . fmap . fmap . fmap . fmap
