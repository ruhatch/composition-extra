module Data.Composition.Slip where

-- flip :: (a -> b -> c) -> b -> a -> c

slipr :: (a -> b -> c -> d) -> b -> c -> a -> d
slipr f b c a = f a b c

slipl :: (a -> b -> c -> d) -> c -> a -> b -> d
slipl f c a b = f a b c

flip3 :: (a -> b -> c -> d) -> c -> b -> a -> d
flip3 f c b a = f a b c

slipr4 :: (a -> b -> c -> d -> e) -> b -> c -> d -> a -> e
slipr4 f b c d a = f a b c d

slipl4 :: (a -> b -> c -> d -> e) -> d -> a -> b -> c -> e
slipl4 f d a b c = f a b c d

twist  :: (a -> b -> c -> d -> e) -> c -> d -> a -> b -> e
twist f c d a b = f a b c d

flip4  :: (a -> b -> c -> d -> e) -> d -> b -> c -> a -> e
flip4 f d b c a = f a b c d

slipr5  :: (a -> b -> c -> d -> e -> f) -> b -> c -> d -> e -> a -> f
slipr5 f b c d e a = f a b c d e

slipl5  :: (a -> b -> c -> d -> e -> f) -> e -> a -> b -> c -> d -> f
slipl5 f e a b c d = f a b c d e

twistr  :: (a -> b -> c -> d -> e -> f) -> c -> d -> e -> a -> b -> f
twistr f c d e a b = f a b c d e

twistl  :: (a -> b -> c -> d -> e -> f) -> d -> e -> a -> b -> c -> f
twistl f d e a b c = f a b c d e


twist5  :: (a -> b -> c -> d -> e -> f) -> d -> e -> c -> a -> b -> f
twist5 f d e c a b = f a b c d e

flip5   :: (a -> b -> c -> d -> e -> f) -> e -> b -> c -> d -> a -> f
flip5 f e b c d a = f a b c d e
