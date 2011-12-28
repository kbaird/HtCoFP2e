--------------------------------------------------------------------
--
--   Ex7_07.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_07 where

import Ex7_06

-- return a list with only singletons, list comprehensions
-- remove all copies of any elements that occur multiple times
uniqueLC :: [Int] -> [Int]
uniqueLC []      = []
uniqueLC intList = [ x | x <- intList, elemNum x intList == 1 ]

-- return a list with only singletons, w/o LC
-- remove all copies of any elements that occur multiple times
uniqueNoLC :: [Int] -> [Int]
uniqueNoLC intList = filter appearsOnlyOnce intList where
  appearsOnlyOnce = (\x -> elemNum x intList == 1)

unique :: [Int] -> [Int]
unique = uniqueLC

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


