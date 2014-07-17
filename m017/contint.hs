import System.Environment
import Data.List.Split

long :: [Int] -> String
long lst = show ln
              where (_,ln) = foldl (\(y,n) x -> if (x + y) < 0 then (0,(max n x)) else ((x + y),(max n (x+y)))) (0,head lst) lst

rd :: String -> Int
rd x = read x

listerize :: [String] -> [String]
listerize lst = map (\x -> long $ map rd $ splitOn "," x) lst

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ listerize (lines fiStr)


