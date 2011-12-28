--------------------------------------------------------------------
--
--   Ex9_20.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex9_20 where

import Ex9_19

-- define the function dropSpace using dropUntil
dropSpace :: [Char] -> [Char]
dropSpace = dropUntil (\x -> x == ' ')

-- define the function takeWhile using dropUntil
takeWhile :: Eq a => (a -> Bool) -> [a] -> [a]
takeWhile p anyList = elemsThatPass
  where
    elemsThatFail = dropUntil (not . p) anyList
    elemsThatPass = [ x | x <- anyList, not (elem x elemsThatFail) ]

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


