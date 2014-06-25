import Data.List
import Data.Function
import Data.List.Split
import System.Environment


lngstr s1 s2 = if length s1 > length s2 then s1 else s2

lcs :: [String] -> String

lcs [[],_] = []
lcs [_,[]]  = []

lcs [(xh:xtl),(yh:ytl)]
    | xh == yh             = xh:(lcs [xtl,ytl])
    | otherwise            = lngstr (lcs [(xh:xtl),ytl] ) (lcs [xtl,(yh:ytl)])

chew :: [[String]] -> String
chew str = case str of [] -> ""
                       [p1,p2]:[] -> lcs [p1,p2]
                       [p1,p2]:tl -> (lcs [p1,p2] ) ++ "\n" ++ (chew tl)



main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ chew $ foldr (\x y -> (splitOn ";" x):y) [] (words fiStr)
