--------------------------------------------------------------------
--
--   Ex7_13a.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_13a where

-- modify definition of ins and iSort to create a function
-- that sorts pairs of numbers.
--
-- iSortPairs [(3,2), (3,0), (2,73)] => [(2,73), (3,0), (3,2)]

insPair :: (Int,Int) -> [(Int,Int)] -> [(Int,Int)]
insPair (x,y) []    = [(x,y)]
insPair (a,b) ((c,d):es)
  | a < c     = (a,b) : ((c,d) : es)
  | c < a     = (c,d) : insPair (a,b) es
  | b < d     = (a,b) : ((c,d):es)
  | otherwise = (c,d) : insPair (a,b) es

iSortPairs :: [(Int,Int)] -> [(Int,Int)]
iSortPairs []         = []
iSortPairs ((x,y):zs) = insPair (x,y) (iSortPairs zs)

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


