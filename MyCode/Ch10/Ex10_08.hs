--------------------------------------------------------------------
--
--   Ex10_08.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex10_08 where

notWhiteSpace :: Char -> Bool
notWhiteSpace = (\x -> not (elem x ['\n', '\t', ' ']))
