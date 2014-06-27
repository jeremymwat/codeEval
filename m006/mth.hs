import Data.List
import Data.Function
import Data.List.Split
import System.Environment
import Data.Char

readInt :: String -> Int
readInt x = read x


mth :: [String] -> String

mth x = 
    let l = (length x - 1) in
    let lst = take l x in
    let m = readInt $ last x in
    if m > l || m < 0 then "" else if m == 0 then last x else lst !! (l - m)




main = do
    args <- getArgs
    fiStr <- readFile (head args)
   -- putStrLn $ intersperse '\n' $ chew $ map splitOn " "$ splitOn "\n" fiStr
    print $ map splitOn " " $ splitOn "\n" (' ':fiStr)


