import System.Environment
import Data.List.Split

long :: [Int] -> String
long lst = show ln
              where (_,ln) = foldr (\x (y,n) -> if (x + y) < 0 then (0,n) else ((x + y),(max n (x+y)))) (0,0) lst

rd :: String -> Int
rd x = read x

listerize :: [String] -> [String]
listerize lst = map (\x -> long $ map rd $ splitOn "," x) lst

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ listerize (lines fiStr)


