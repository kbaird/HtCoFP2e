--------------------------------------------------------------------
--
--   Ex9_19.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex9_19 where

-- give the type and definition of the generalization
-- dropUntil of the function dropWord.
dropUntil :: (a -> Bool) -> [a] -> [a]
dropUntil p [] = []
dropUntil p (x:xs)
  | p x        = x:xs
  | otherwise  = dropUntil p xs

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


