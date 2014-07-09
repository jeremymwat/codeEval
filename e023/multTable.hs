import Data.List
import Data.Function
import Data.List.Split

spaces = "    "
lst = [map (\y -> show ((*) x y)) [1,2..12] | x<- [1,2..12]]

spcApp :: [String] -> [String]

spcApp str = case str of 
             hd:[]      -> [hd]
             hd:tl      -> hd:(take (4 - (length (head tl))) spaces):(spcApp tl)
             _          -> []

main = do
    putStrLn $ unlines $ map concat $ map spcApp lst
