--------------------------------------------------------------------
--
--   ex6.21.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex6_22 where

import Ch6Constants
import Ex6_21

formatLines :: BillType -> String
formatLines []     = []
formatLines (x:xs) = formatLine x ++ formatLines xs

formatLinesAlt :: BillType -> String
formatLinesAlt lineList = formattedLines
  where
  formattedLines = concat rawLines
  rawLines       = [ formatLine (n,p) | (n,p) <- lineList ]

