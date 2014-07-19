import System.Environment
import Data.List
import Data.List.Split

-- take arg string, break in to lines, remove commas, read from string to int
process lst = map  (getInd . splitOn ",") lst

getInd :: [String] -> String
getInd (str1:str2:[]) = if ch `elem` str1 
                        then let Just ind = (findIndex ((==) ch) (reverse str1)) 
                            in show $ (length str1 - 1) - ind  
                        else "-1"
                            where ch = head str2
main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (lines fiStr)
