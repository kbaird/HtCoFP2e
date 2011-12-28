--------------------------------------------------------------------
--
--   ex6.26.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex6_26 where

import Ch6Constants
import Ex6_20
import Ex6_21
import Ex6_22
import Ex6_23
import Ex6_24
import Ex6_25

look :: Database -> BarCode -> BookRecord
look db bc = report matchingBooks
  where
  matchingBooks        = [ (barCode,n,p) | (barCode,n,p) <- db, barCode == bc ]
  report []            = missingBookRecord
  report ((bc,n,p):xs) = (n,p)

