import Data.List
import Data.Function
import Data.List.Split
import System.Environment

flipr :: [String] -> String

flipr str = foldr (\x y -> x ++ " " ++ y) "" (reverse str)

chew :: [String] -> String

chew [] = ""
chew (hd:[]) = flipr (words hd)
chew (hd:tl) = (flipr (words hd)) ++ "\n" ++ (chew tl)


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ chew $ splitOn "\n" fiStr
