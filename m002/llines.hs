import Data.List
import Data.Function
import System.Environment
import Data.Ord

readInt :: String -> Int
readInt x = read x


ll :: [String] -> [String]
ll (x:tl) = take (readInt x) $ reverse $ sortBy (comparing length) tl 





main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ ll $ lines fiStr
 
