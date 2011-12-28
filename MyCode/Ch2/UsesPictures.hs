--------------------------------------------------------------------
--
--   UsesPictures.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module UsesPictures where

import Pictures

blackHorse :: Picture
blackHorse = invertColour horse

rotateHorse :: Picture
rotateHorse = rotate horse

black :: Picture
black = (superimpose (flipH blackHorse) (superimpose (flipV blackHorse) (superimpose blackHorse (rotate blackHorse))))

diag1 :: Picture
diag1 = sideBySide (above white black) (above black white)

diag2 :: Picture
diag2 = above (sideBySide white black) (sideBySide black white)

fourByFour :: Picture
fourByFour = above (sideBySide diag1 diag1) (sideBySide diag1 diag1)

chessboard :: Picture
chessboard = above (sideBySide fourByFour fourByFour) (sideBySide fourByFour fourByFour)

ex24a :: Picture
ex24a = above (sideBySide horse blackHorse) (sideBySide blackHorse horse)

ex24b :: Picture
ex24b = above (sideBySide horse blackHorse) (sideBySide (flipV blackHorse) (flipV horse))

ex24c :: Picture
ex24c = above (sideBySide horse blackHorse) (sideBySide (rotate blackHorse) (rotate horse))

ex25 :: Picture
ex25 = above (sideBySide horse blackHorse) (sideBySide (flipH blackHorse) (flipH horse))

-- vim: noexpandtab shiftwidth=2 tabstop=2 softtabstop=2 foldenable foldmethod=marker foldmarker=[[[,]]]:
