module GreatestCommonFactor where

  greatestCommonFactor :: Int -> Int -> Int
  greatestCommonFactor a b
    | b == 0    = a
    | otherwise = greatestCommonFactor b (a `mod` b)

