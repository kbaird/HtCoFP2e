--------------------------------------------------------------------
--
--   Ex10_10.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ex10_10 where

slope :: (Float -> Float) -> (Float -> Float)
slope f = (\x -> (f (x + 1) - f (x - 1)) / 2.0)

flat :: Float -> Float
flat   = (\x -> 1.0)

linear :: Float -> Float
linear = (\x -> x)

square :: Float -> Float
square = (\x -> x * x)

{-
map (slope flat)   [ 0.0 .. 9.0 ]
map (slope linear) [ 0.0 .. 9.0 ]
map (slope square) [ 0.0 .. 9.0 ]
-}
