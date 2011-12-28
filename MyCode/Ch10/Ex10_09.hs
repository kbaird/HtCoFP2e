--------------------------------------------------------------------
--
--   Ex10_09.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex10_09 where

total :: (Int -> Int) -> (Int -> Int)
total f n
  | n < 0     = 0
  | n == 0    = f 0
  | otherwise = f 0 + total f (n-1)

add :: Int -> Int -> Int
add = (\x y -> x + y)

add0 = add 0
add1 = add 1
add2 = add 2
