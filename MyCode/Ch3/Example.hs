module Example where

  import Char

  exampleIsLower :: Char -> Bool
  exampleIsLower ch = ('a' <= ch) && (ch <= 'z')

  offset :: Int
  offset = ord 'A' - ord 'a'

  lowerToUpper :: Char -> Char
  lowerToUpper ch
    | exampleIsLower ch  = chr (ord ch + offset)
    | otherwise   = ch

  charToNumOffset :: Int
  charToNumOffset = ord '0'

  charToNum :: Char -> Int
  charToNum ch
    | isDigit ch  = ord (ch) - charToNumOffset
    | otherwise   = 0

