--------------------------------------------------------------------
--
--   ex5.1.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

maxOccurs :: Int -> Int -> (Int, Int)
maxOccurs a b = (maxItem, maxCount a b)
  where
  maxItem  = max a b
  maxCount a b
    | a == b    = 2
    | otherwise = 1

maxThreeOccurs :: Int -> Int -> Int -> (Int, Int)
maxThreeOccurs a b c = (maxItem, maxCount)
  where
  allButOne = 2
  allCount  = 3
  allMax    = maxTwoCount == allButOne && maxThrCount == allButOne
  maxItem   = max maxTwoItem maxThrItem
  (maxTwoItem, maxTwoCount) = maxOccurs a b
  (maxThrItem, maxThrCount) = maxOccurs maxTwoItem c
  maxCount
    | allMax                   = allCount
    | maxTwoItem > maxThrItem  = maxTwoCount
    | maxTwoItem == maxThrItem = max maxTwoCount maxThrCount
    | otherwise                = maxThrCount
