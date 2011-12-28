--------------------------------------------------------------------
--
--   ex3.4.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

nAnd1, nAnd2 :: Bool -> Bool -> Bool

nAnd1 x y
  | (x == True) && (y == True) = False
  | otherwise = True

nAnd2 True True   = False
nAnd2 True False  = True
nAnd2 False True  = True
nAnd2 False False = True
