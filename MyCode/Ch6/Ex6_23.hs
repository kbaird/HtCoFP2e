--------------------------------------------------------------------
--
--   ex6.23.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex6_23 where

import Ch6Constants

makeTotal :: BillType -> Int
makeTotal []         = 0
makeTotal ((_,p):xs) = p + makeTotal xs

