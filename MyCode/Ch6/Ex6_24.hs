--------------------------------------------------------------------
--
--   ex6.24.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex6_24 where

import Ch6Constants
import Ex6_20
import Ex6_21
import Ex6_22
import Ex6_23

formatTotal :: Price -> String
formatTotal p = total ++ spacers ++ (formatPence p) ++ "\n"
  where
  spacers         = replicate numberOfSpacers '.'
  numberOfSpacers = lineLength - length total - length (formatPence p)

