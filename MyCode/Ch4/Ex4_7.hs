module Ex4_7 where

  mult :: Int -> Int -> Int
  mult a b
    | b == 0    = 0
    | b == 1    = a
    | otherwise = a + mult a (b-1)

