--------------------------------------------------------------------
--
--   ex6.25.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex6_25 where

import Ch6Constants
import Ex6_20
import Ex6_21
import Ex6_22
import Ex6_23
import Ex6_24

formatBill :: BillType -> String
formatBill billList = formatLines billList ++ "\n" ++ formatTotal (makeTotal billList)

