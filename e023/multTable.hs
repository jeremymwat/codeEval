--fold remove
--foldr (\x y -> if (x `elem` "abc") then y else x:y) "" "Thabis sabecncteanbce"
import Data.List
import Data.Function
import Data.List.Split
import System.Environment

-- map interleave 4 spaces over final product
lst = [map (\y -> show ((*) x y)) [1,2..12] | x<- [1,2..12]]

main = do
    putStrLn $ unlines $ map concat $ map (intersperse "    ") lst
