import Data.List
import Data.Function
import Data.List.Split
import System.Environment

flipr :: [String] -> String

flipr str = reverse (foldr (\x y -> x ++ " " ++ y) "" str)

chew :: [String] -> String

chew [] = ""
chew (hd:[]) = if flipr (words hd)
chew (hd:tl) = (flipr (words hd)) ++ "\n" ++ (chew tl)


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ chew $ splitOn "\n" fiStr
