-- Code eval problem 1
import System.Environment
import Data.List

-- broken, need to research do I/O, fiStr line might be culprit

fibi :: Int -> Int -> Int -> String

fibi fn sn num
  | (mod num (fn*sn)) == 0  = "FB"
  | mod num fn        == 0  = "F"
  | mod num sn        == 0  = "B"
  | otherwise               = show num

readInt :: [Char] -> Int
readInt x = read x

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    let procList = map readInt (words fiStr)
    if mod (length procList) 3 /= 0
      then print "Bad input"
      else let s:n:num:_ = procList in putStrLn $ foldr (\x y -> x ++ " " ++ y) "" [fibi s n x | x <- [1..num]]
