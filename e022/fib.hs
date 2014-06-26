import Data.List
import Data.Char
import System.Environment
import Data.List.Split
-- naive fibonacci

fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)


main = do
    args <- getArgs
    fiStr <-  readFile (head args)
    putStrLn  
