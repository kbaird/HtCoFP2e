--------------------------------------------------------------------
--
--   Ch7Libs.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ch7Libs where

ins :: Int -> [Int] -> [Int]
ins x []    = [x]
ins x (y:ys)
  | x <= y      = x:(y:ys)
  | otherwise   = y : ins x ys

iSort :: [Int] -> [Int]
iSort []     = []
iSort (x:xs) = ins x (iSort xs)

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


