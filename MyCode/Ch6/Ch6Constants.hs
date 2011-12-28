--------------------------------------------------------------------
--
--   Ch6Constants.hs
--
--   Kevin Baird
--
--   Aug 2007
--
--------------------------------------------------------------------

module Ch6Constants where

type Name     = String
type Price    = Int
type BarCode  = Int
type BillType = [(Name,Price)]

pencePerPound :: Int
pencePerPound = 100
sprintfMin    :: Int
sprintfMin    = 10

lineLength :: Int
lineLength = 70

total :: String
total = "Total"

type Database   = [ (BarCode,Name,Price) ]
type BookRecord = (Name,Price)

missingBookRecord :: BookRecord
missingBookRecord = ("Unknown Item",0)

codeIndex :: Database
codeIndex = [ (4719, "Fish Fingers" , 121),
              (5643, "Nappies" , 1010),
              (3814, "Orange Jelly", 56),
              (1111, "Hula Hoops", 21),
              (1112, "Hula Hoops (Giant)", 133),
              (1234, "Dry Sherry, 1lt", 540)]

type TillType = [BarCode]
