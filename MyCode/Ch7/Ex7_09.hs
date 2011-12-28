--------------------------------------------------------------------
--
--   Ex7_09.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_09 where

import Ch7Libs

-- find min/max of a number list using iSort
maxFromListiSort :: [Int] -> Int
maxFromListiSort intList = firstSorted where
  sortedList  = iSort intList
  firstSorted = head (reverse sortedList)

minFromListiSort :: [Int] -> Int
minFromListiSort intList = firstSorted where
  sortedList  = iSort intList
  firstSorted = head sortedList

-- same w/o iSort
maxFromList :: [Int] -> Int
maxFromList [x]    = x
maxFromList (x:xs) = max x (maxFromList xs)

minFromList :: [Int] -> Int
minFromList [x]    = x
minFromList (x:xs) = min x (minFromList xs)

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


