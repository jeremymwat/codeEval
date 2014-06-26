import Data.List
import Data.Function
import Data.List.Split
import System.Environment
import Data.Char


mth :: String -> String

mth lst = 
    let l = length lst in
    let m = digitToInt $ last lst in
    if m > l || l == 1 then "" else  [lst !! (l - (1 + (digitToInt $ last lst)))]


chew :: [String] -> String
chew [] = "" 
chew (lst:[]) = mth lst
chew (lst:"":_) = mth lst
chew ("":tl) = chew tl
chew (lst:tl) = (mth lst)++"\n"++(chew tl)


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ chew $ map (filter (\x -> x /= ' '))$ splitOn "\n" fiStr

