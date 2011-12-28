--------------------------------------------------------------------
--
--   ex3.1.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

exOr1, exOr2 :: Bool -> Bool -> Bool

exOr1 x y
  | (x == True) && (y == False) = True
  | (y == True) && (x == False) = True
  | otherwise = False

exOr2 x y
  | (x == y)  = False
  | otherwise = True
