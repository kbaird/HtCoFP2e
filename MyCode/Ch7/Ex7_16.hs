--------------------------------------------------------------------
--
--   Ex7_16.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_16 where

zip3a :: [a] -> [b] -> [c] -> [(a,b,c)]
zip3a (x:xs) (y:ys) (z:zs) = (x,y,z) : zip3a xs ys zs
zip3a _ _ [] = []
zip3a _ [] _ = []
zip3a [] _ _ = []

zip3b :: [a] -> [b] -> [c] -> [(a,b,c)]
zip3b (x:xs) (y:ys) (z:zs) = integrateTuples doubleDuples
  where
    doubleDuples            = zip (x:xs) (zip (y:ys) (z:zs))
    integrateTuples anyList = [ (l,m,n) | (l,(m,n)) <- anyList ]

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


