-- Code eval problem 1
import System.Environment
import Data.List

-- broken, need to research do I/O, fiStr line might be culprit
main = do
    args <- getArgs
    fiStr <- map (read (words readFile (Head args)) :: Int)
   fibi :: Int-> Int-> Int -> String
   fibi fn sn num 
      | (mod (fn*sn) num) == 0  = "FB"
      | mod fn num        == 0  = "F"
      | mod sn num        == 0  = "B"
      | otherwise               = show num
   chew x = case xs of [] -> []
                        i:j:k:_ -> print (map (fibi i j [1..k]))
