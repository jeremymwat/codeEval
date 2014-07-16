import Data.List
import Data.Char
import System.Environment
import Data.List.Split
-- naive fibonacci

readI :: String -> Int
readI x = read x

fibs = 0:1:(zipWith (+) fibs (tail fibs))
fib x = fibs!!x

main = do
    args <- getArgs
    fiStr <-  readFile (head args)
    putStrLn $ unlines $ map (\x -> show $ fib (readI x)) (lines fiStr)
