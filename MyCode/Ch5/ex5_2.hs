--------------------------------------------------------------------
--
--   ex5.2.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

maxThree :: Int -> Int -> Int -> Int
maxThree a b c = max a (max b c)

minThree :: Int -> Int -> Int -> Int
minThree a b c = min a (min b c)

middle :: Int -> Int -> Int -> Int
middle a b c
  | a >= b && b >= c = b
  | b >= a && a >= c = a
  | c >= a && a >= b = a
  | c >= b && b >= a = b
  | otherwise = c

orderTriple :: (Int, Int, Int) -> (Int, Int, Int)
orderTriple (a, b, c) = (minThree a b c, middle a b c, maxThree a b c)

