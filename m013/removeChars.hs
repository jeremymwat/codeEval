--fold remove
foldr (\x y -> if (x `elem` "abc") then y else x:y) "" "Thabis sabecncteanbce"

import Data.List
import Data.Function
import Data.List.Split
import System.Environment

--junk below for reference
rmstr :: [Char] -> [Char] -> [Char]

rmstr str filtr = foldr (\x y -> if (x `elem` filtr) then y else x:y) "" str
chew :: [String] -> String

chew [] = ""
chew (hd:[]) = if flipr (words hd)
chew (hd:tl) = (flipr (words hd)) ++ "\n" ++ (chew tl)


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ chew $ map splitOn ", " $ splitOn "\n" fiStr
