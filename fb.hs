-- Code eval problem 1
import System.Environment
import Data.List

-- broken, need to research do I/O, fiStr line might be culprit

  --fibi :: Int-> Int-> Int -> String
fibi fn sn num  
  | (mod (fn*sn) num) == 0  = "FB"
  | mod fn num        == 0  = "F"
  | mod sn num        == 0  = "B"
  | otherwise               = show num
  
readInt :: [Char] -> Int
readInt x = read x

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    print $ map readInt (take 3 (words fiStr)) 
