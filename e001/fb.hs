-- Code eval problem 1
import System.Environment
import Data.List


fibi :: Int -> Int -> Int -> String

fibi fn sn num
  | (mod num fn == 0) && (mod num sn == 0)  = "FB"
  | mod num fn                        == 0  = "F"
  | mod num sn  == 0                        = "B"
  | otherwise                               = show num

readInt :: [Char] -> Int
readInt x = read x

chew :: [Int] -> String
chew lst = case lst of s:n:num:tl ->
                               foldr (\x y -> if y == []
                                               then x ++ y
                                               else x ++ " " ++ y) ""
                                               [fibi s n x | x <- [1..num]]
                                               ++ (if tl == []
                                                    then ""
                                                    else "\n") ++ chew tl
                       [] -> ""

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    let procList = map readInt (words fiStr)
    putStrLn (chew procList)
