--fold remove
--foldr (\x y -> if (x `elem` "abc") then y else x:y) "" "Thabis sabecncteanbce"
import Data.List
import Data.Function
import Data.List.Split
import System.Environment

--junk below for reference
rmstr :: [Char] -> [Char] -> [Char]
rmstr str filtr = foldr (\x y -> if (x `elem` filtr) then y else x:y) [] str

chew :: [[String]] -> String

chew []                 = ""
chew ((fs:sn:_):[])     = rmstr fs sn
chew ((fs:sn:_):[""]:_) = rmstr fs sn
chew ((fs:sn:_):tl)     = rmstr fs sn ++ "\n" ++ (chew tl)
chew (_:[])             = ""


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ chew $ map (splitOn ", ") $ splitOn "\n" fiStr
    --print $ map (splitOn ", ") $ splitOn "\n" fiStr
