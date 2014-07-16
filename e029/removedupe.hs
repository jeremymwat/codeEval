import System.Environment
import Data.List
import Data.List.Split

process :: [String] -> String
process (x:y:tl)
    | tl == []     = if x == y then x else x++","++y
    | x == y       = process (x:tl)
    | otherwise    = x ++ "," ++ (process (y:tl))

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn$ unlines $ map (\x -> process $ splitOn "," x)  (lines fiStr)


