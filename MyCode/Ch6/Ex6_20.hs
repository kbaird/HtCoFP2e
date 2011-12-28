--------------------------------------------------------------------
--
--   ex6.20.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex6_20 where

import Ch6Constants

formatPence :: Price -> String
formatPence p = formattedUnits ++ "." ++ formattedDecimals
  where
  units          = p `div` pencePerPound
  decimals       = p `mod` pencePerPound
  formattedUnits = show units
  formattedDecimals
    | decimals >= sprintfMin = show decimals
    | otherwise = "0" ++ show decimals
