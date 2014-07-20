import System.Environment
import Data.Char
import Data.List

parseS :: String -> [Int]
parseS str = map length $ sortBy (\x y -> compare (length y) (length x)) $ groupBy (==) $ sort str


process strs = map (\x -> show . sum $ zipWith (*) [26,25..1] (parseS x)) strs

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (map (\x -> map toLower $ filter isAlpha x) $ lines fiStr)
