--------------------------------------------------------------------
--
--   ex6.21.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex6_21 where

import Ch6Constants
import Ex6_20

formatLine :: (Name,Price) -> String
formatLine (n,p) = n ++ spacers ++ formattedPence ++ "\n"
  where
  spacers         = replicate numberOfSpacers '.'
  numberOfSpacers = lineLength - length n - length formattedPence
  formattedPence  = formatPence p

