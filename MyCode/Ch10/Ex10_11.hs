--------------------------------------------------------------------
--
--   Ex10_11.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex10_11 where

-- Returns an approximation of the 2 arg function which gives the
-- area under its graph between two end points as a result.
integrate :: (Float -> Float) -> (Float -> Float -> Float)
