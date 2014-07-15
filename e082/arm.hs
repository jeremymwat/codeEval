import System.Environment
import Data.Char


armtest :: String -> Bool

armtest str = 
    let l = (length str) in 
    (read str) == (foldr (\x -> (+) $ (digitToInt x)^l) 0 str)

process n = map (\m -> show $ armtest m) n

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (lines fiStr)


