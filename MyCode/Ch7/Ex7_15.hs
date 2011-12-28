--------------------------------------------------------------------
--
--   Ex7_15.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_15 where

myTake :: Int -> [a] -> [a]
myTake 0 _  = []
myTake n (x:xs)
  | n < 0     = error "myTake: negative argument"
  | otherwise = x : myTake (n-1) xs
myTake _ _    = []

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


