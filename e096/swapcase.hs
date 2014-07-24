import System.Environment
import Data.Char
import Data.List

swapCase :: String -> String
swapCase str = map (\x -> if isLower x then toUpper x else toLower x) str


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ swapCase fiStr

