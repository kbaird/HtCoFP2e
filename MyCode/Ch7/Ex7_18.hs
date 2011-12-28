--------------------------------------------------------------------
--
--   Ex7_18.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_18 where

import Ex7_07

{-
sublistX :: [Char] -> [Char] -> Bool
sublistX string1 string2 = foundAMatch
  where
    foundAMatch
      | not sameLength = False
      | not haveLength = False
      | otherwise      = True

    sameLength = length trimmed1 == length trimmed2
    haveLength = length trimmed1 > 0

    trimmed1 = [ c | c <- string1, foundIn c string2 ]
    trimmed2 = [ c | c <- string2, foundIn c string1 ]

    --foundIn :: Char -> [Char] -> Bool
    foundIn c charList = countOf c charList > 0

    countOf c charList = length [ x | x <- charList, x == c ]
-}

subsequence :: [Char] -> [Char] -> Bool
subsequence (x:xs) (y:ys)
  | x == y                 = subsequence xs ys
  | length xs > length ys  = subsequence xs (y:ys)
  | length ys > length xs  = subsequence ys (x:xs)
  | length xs == length ys = True
subsequence [] []              = False
subsequence (x:xs) []          = subsequence xs []
subsequence [] (y:ys)          = subsequence [] ys


sublist :: [Char] -> [Char] -> Bool
sublist [] [] = True
sublist _  [] = False
sublist [] _  = False
sublist x (y:ys)
  | subsequence x (y:ys) = True
  | otherwise            = subsequence x ys

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


