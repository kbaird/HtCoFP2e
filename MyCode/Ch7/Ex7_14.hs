--------------------------------------------------------------------
--
--   Ex7_14.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex7_14 where

myDrop :: Int -> [a] -> [a]
myDrop 0 anyList = anyList
myDrop _ []      = []
myDrop n (x:xs)  = myDrop (n-1) xs

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


