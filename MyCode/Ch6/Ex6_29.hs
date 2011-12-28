--------------------------------------------------------------------
--
--   ex6.29.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex6_29 where

import Prelude hiding (lookup)
import Ch6Constants
import Ex6_21
import Ex6_22
import Ex6_23
import Ex6_24
import Ex6_25
import Ex6_28

makeDiscount :: BillType -> Int
makeDiscount billList = totalDiscount
  where
  totalDiscount   = discountPerPair * sherryPairs
  discountPerPair = 100
  sherryPairs     = (length sherryItems) `div` 2
  sherryItems     = [ (name,price) | (name,price) <- billList, name == "Dry Sherry, 1lt" ]

formatDiscount :: Int -> String
formatDiscount amount = discountLine
  where
  discountLabel = "Discount"
  discountLine  = formatLine (discountLabel,amount)

formatBillWithDiscount :: BillType -> String
formatBillWithDiscount billList = itemLines ++ discountLine ++ totalLine
  where
  itemLines    = formatLines billList ++ "\n"
  discountAmt  = (0-makeDiscount billList) -- Stored as negative and added
  discountLine = formatDiscount discountAmt ++ "\n"
  totalAmt     = makeTotal billList + discountAmt
  totalLine    = formatTotal totalAmt ++ "\n"
