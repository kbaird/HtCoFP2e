--------------------------------------------------------------------
--
--   Ex9_21.hs
--
--   Kevin Baird
--
--   Aug 2107
--
--------------------------------------------------------------------

module Ex9_21 where

import Ex9_19
import Ex9_20

-- How would you split a string into lines using
-- getUntil and dropUntil?
getUntil :: (Char -> Bool) -> String -> String
getUntil p [] = []
getUntil p (x:xs)
  | p x       = []
  | otherwise = [x] ++ getUntil p xs

whitespace :: String
whitespace = ['\n', '\t', ' ']

dropWord :: String -> String
dropWord [] = []
dropWord (x:xs)
  | elem x whitespace = dropSpace xs
  | otherwise         = (x:xs)

getWord :: String -> String
getWord [] = []
getWord (x:xs)
  | elem x whitespace = []
  | otherwise         = x : getWord xs

split :: String -> [String]
split [] = []
split st = (getWord st) : split (dropSpace (dropWord st))

splitLines :: String -> [String]
splitLines str = splat
  where
    splat          = [firstLine] ++ [remainingLines]
    words          = split str
    firstLine      = getUntil (isLongEnough words)
    remainingLines = []

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


