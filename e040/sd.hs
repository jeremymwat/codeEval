import System.Environment
import Data.Char

countl p ls = length $ filter ((==) p) ls 

buildl str = foldl (\x y -> x++(show $ countl (intToDigit y) str)) [] [0,1..(length str - 1)]

process str = map (\x -> if x == buildl x then "1" else "0") str

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (lines fiStr)
