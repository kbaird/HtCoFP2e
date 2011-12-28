--------------------------------------------------------------------
--
--   Ex7_17.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_17 where

import Ex7_07

qSort :: [Int] -> [Int]
qSort []     = []
qSort (x:xs) = [ y | y <- xs, y > x] ++ [x] ++ qSort [ y | y <- xs, y <= x ]

qSortUniq :: [Int] -> [Int]
qSortUniq = unique . qSort

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


