--------------------------------------------------------------------
--
--   Ex7_11.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_11 where

import Ch7Libs
import Ex7_07

-- modify definition of ins to affect iSort in two ways:
-- 1) iSort output is in descending order
-- 2) iSort output is uniqueified

insDesc :: Int -> [Int] -> [Int]
insDesc x []    = [x]
insDesc x (y:ys)
  | x <= y      = (reverse ys) ++ [y] ++ [x]
  | otherwise   = (insDesc x ys) ++ [y]

iSortUniq :: [Int] -> [Int]
iSortUniq []     = []
iSortUniq (x:xs) = unique (ins x (iSortUniq xs))

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


