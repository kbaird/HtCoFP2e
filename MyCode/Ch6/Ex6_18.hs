--------------------------------------------------------------------
--
--   ex6.18.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

maxThreeOccurs :: Int -> Int -> Int -> (Int, Int)
maxThreeOccurs a b c = (maxItem, maxCount)
  where
  maxItem      = max a (max b c)
  maxCount     = length justMaxItems
  justMaxItems = [ x | x <- [a, b, c], x == maxItem ]
