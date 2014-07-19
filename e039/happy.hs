import System.Environment
import Data.Char

sumsq :: String -> String
sumsq str = show $ foldr (\x y -> (digitToInt x)^2 + y) 0 str

process (str,lst) 
    | str `elem` lst      = "0"
    | smq == "1"          = "1"
    | otherwise           = process (smq, str:lst)
      where smq = sumsq str



main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ map (\x -> process (x,[])) (lines fiStr)
