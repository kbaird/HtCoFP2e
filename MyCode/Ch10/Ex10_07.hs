--------------------------------------------------------------------
--
--   Ex10_07.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex10_07 where

myFlip :: (a -> b -> c) -> (b -> a -> c)
myFlip f x y = f y x

subtract :: Int -> Int -> Int
subtract x y = x - y
