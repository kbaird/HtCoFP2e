--------------------------------------------------------------------
--
--   ex6.28.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex6_28 where

import Prelude hiding (lookup)
import Ch6Constants
import Ex6_27

makeBill :: TillType -> BillType
makeBill bType = [ lookup x | x <- bType ]

