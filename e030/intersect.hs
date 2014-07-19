import System.Environment
import Data.List
import Data.List.Split

-- take arg string, remove commas, read from string to int
lis :: String -> [[String]]
lis lst = map (splitOn ",") (splitOn ";" lst)

intersect2 :: [[String]] -> [String]
intersect2 (ls1:ls2:[])  = intersperse "," $ intersect ls1 ls2

process :: String -> [String]
process str = map (\x -> concat $ intersect2 $ lis x) (lines str)


main = do
    args <- getArgs
    fiStr <- readFile (head args)
   -- putStrLn $ unlines $ process fiStr
    putStrLn $ unlines $ process fiStr
