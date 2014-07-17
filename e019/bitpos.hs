import System.Environment
import Data.Bits
import Data.List.Split

rd :: String -> Int
rd s = read s 

lis :: String -> [[Int]]
lis lst = map (\x -> map rd $ splitOn "," x) (lines lst)

chkbit :: [Int] -> String
chkbit (n:x:y:_) = if (testBit n (x-1) == testBit n (y-1)) then "true" else "false"

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ map chkbit (lis fiStr)
