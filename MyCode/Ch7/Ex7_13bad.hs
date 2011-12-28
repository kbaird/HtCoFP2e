--------------------------------------------------------------------
--
--   Ex7_13.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_13 where

-- modify definition of ins and iSort to create a function
-- that sorts pairs of numbers.
--
-- iSortPairs [(3,2), (3,0), (2,73)] => [(2,73), (3,0), (3,2)]

iSortPairs :: [(Int,Int)] -> [(Int,Int)]
iSortPairs []      = []
iSortPairs [(x,y)] = [(x,y)]
iSortPairs [(a,b),(c,d)]
  | a < c     = [(a,b)] ++ [(c,d)]
  | a > c     = [(c,d)] ++ [(a,b)]
  | b <= d    = [(a,b)] ++ [(c,d)]
  | otherwise = [(c,d)] ++ [(a,b)]
iSortPairs ((a,b):(c,d):efs) = before ++ [(a,b)] ++ after
  where
    before                   = iSortPairs (lessThanA ++ equalToALessThanD ++ equalToAEqualD)
    after                    = iSortPairs (equalToAGreaterThanD ++ greaterThanA)
    lessThanALessThanD       = [ (m,n) | (m,n) <- efs, m <  a, n <  d ]
    lessThanAEqualD          = [ (m,n) | (m,n) <- efs, m <  a, n == d ]
    lessThanAGreaterThanD    = [ (m,n) | (m,n) <- efs, m <  a, n >  d ]
    lessThanA                = lessThanALessThanD ++ lessThanAEqualD ++ lessThanAGreaterThanD
    equalToALessThanD        = [ (m,n) | (m,n) <- efs, m == a, n <= d ]
    equalToAEqualD           = [ (m,n) | (m,n) <- efs, m == a, n == d ]
    equalToAGreaterThanD     = [ (m,n) | (m,n) <- efs, m == a, n >  d ]
    greaterThanALessThanD    = [ (m,n) | (m,n) <- efs, m >  a, n <  d ]
    greaterThanAEqualD       = [ (m,n) | (m,n) <- efs, m >  a, n == d ]
    greaterThanAGreaterThanD = [ (m,n) | (m,n) <- efs, m >  a, n >  d ]
    greaterThanA             = greaterThanALessThanD ++ greaterThanAEqualD ++ greaterThanAGreaterThanD

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


