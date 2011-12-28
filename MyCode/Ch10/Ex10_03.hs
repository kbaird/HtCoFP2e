--------------------------------------------------------------------
--
--   Ex10.3.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex10_03 where

composeList :: [(a -> a)] -> (a -> a)
composeList [f]    = f
composeList (f:fs) = f . (composeList fs)
