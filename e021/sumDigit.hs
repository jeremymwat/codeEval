import Data.List
import Data.Char
import System.Environment
import Data.List.Split

sumInt :: String -> String
sumInt str = show $ foldr (\x y -> (digitToInt x) + y) 0 str

chew :: [String] -> String
chew [] = ""
chew lst = foldr (\x y -> if x == [] then "" else sumInt x ++ "\n" ++ y) "" lst 

main = do
    args <- getArgs
    fiStr <-  readFile (head args)
    putStrLn $ chew $ words fiStr
