import Data.List
import Data.Function
import Data.List.Split

-- get strlen of each element, take from spaces, append
spaces = "    "
lst = [map (\y -> show ((*) x y)) [1,2..12] | x<- [1,2..12]]

spcApp str


main = do
    putStrLn $ unlines $ map concat $ map (intersperse "    ") lst
