import System.Environment
import Data.Char

-- take arg string, break in to lines, remove commas, read from string to int
lis :: String -> [Int]
lis lst = map (\x -> map rd $ splitOn "," x) (lines lst)

sumsq :: String -> String
sumsq str = show $ foldr (\x y -> (digitToInt x)^2 + y) 0 str

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (lines fiStr)
