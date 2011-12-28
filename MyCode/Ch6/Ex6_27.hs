--------------------------------------------------------------------
--
--   ex6.27.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex6_27 where

import Prelude hiding (lookup)
import Ch6Constants
import Ex6_26

lookup :: BarCode -> BookRecord
lookup = look codeIndex

