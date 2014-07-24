import System.Environment
import Data.Char

process str = unwords $ map (\(hd:tl) -> (toUpper hd):tl) (words str)



main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ map process (lines fiStr)

