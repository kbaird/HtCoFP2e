--------------------------------------------------------------------
--
--   Ex7_06.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_06 where

-- define using primitive recursion
elemNumPR :: Int -> [Int] -> Int
elemNumPR x [] = 0
elemNumPR x (y:ys)
  | x == y    = 1 + elemNumPR x ys
  | otherwise = 0 + elemNumPR x ys

-- define without using primitive recursion
elemNumNoPR :: Int -> [Int] -> Int
elemNumNoPR x intList = xCountInIntList where
  xCountInIntList  = length listOfJustXs
  listOfJustXs     = [ a | a <- intList, a == x ]

-- alias for ease of use
elemNum :: Int -> [Int] -> Int
elemNum = elemNumNoPR

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


