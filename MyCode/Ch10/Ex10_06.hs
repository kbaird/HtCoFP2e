--------------------------------------------------------------------
--
--   Ex10_06.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex10_06 where

f :: (a -> a) -> (a -> a) -> (a -> a)
f x y = x . y

g :: (a -> a) -> (a -> a) -> (a -> a)
g = (\x y -> f y x)

double = (\x -> x * 2)
add1   = (\x -> x + 1)

