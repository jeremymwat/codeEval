import Data.List
import Data.Function
import Data.List.Split
import System.Environment
import Data.Char

readInt :: String -> Int
readInt x = read x

nmodm (n:m:_) = head [ n-m*x | x <- [1,2..], (n -(m*x))<m]



main = do
    args <- getArgs
    fiStr <- readFile (head args)
--    putStrLn $ unlines $  (lines fiStr)

