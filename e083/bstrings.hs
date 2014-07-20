import System.Environment
import Data.Char





main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (map (toLower $ filter isAlpha) $ lines fiStr)
