--------------------------------------------------------------------
--
--   Ex7_08.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

-- give a primitive recursion definition
myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = myReverse xs ++ [x]

-- give a primitive recursion definition
{-
This is complicated. First, it defines a new internal function called 'f', that takes a duple
of lists, uses an intermediate data structure of a list of duples, and finalizes with another
duple of lists.
We then extract each x and y out of the intermediate list of duples, adding them via xs ++ [x]
and ys ++ [y] to maintain original order. (It would reverse if we used [x] ++ xs or (x:xs),
because of the recursive nature of the extraction - it pulls out of xs while there's still an
outside x.
Then when there are no more xys, we fail the pattern match, and fall back to f zs _ = zs, where
zs is the duple of lists that we want at the end anyway.
-}
myUnzip :: [(a,b)] -> ([a],[b])
myUnzip zs = f ([],[]) zs
  where
    f :: ([a],[b]) -> [(a,b)] -> ([a],[b])
    f (xs,ys) ((x,y):xys) = f ((xs ++ [x]),(ys ++ [y])) xys
    f zs _                = zs

-- vim: expandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:


