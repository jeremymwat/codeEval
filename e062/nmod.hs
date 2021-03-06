import Data.List
import Data.Function
import Data.List.Split
import System.Environment
import Data.Char

readr :: String -> Int 
readr x = read x

dg :: Int -> Int -> Int
dg x y = if (x - y) < 0 then x else dg (x-y) y


nmodm :: [String] -> String
nmodm (n:m:_) = 
    let (i,j) = (readr n,readr m) in
    show $ dg i j 
   -- show $ i - ((*) j $ toInteger $  floor (i/j) )


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ map (\x -> nmodm $ splitOn "," x) (lines fiStr)
    
