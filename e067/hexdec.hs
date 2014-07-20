import System.Environment
import Numeric


convHex :: String -> String
convHex str = show x where [(x,_)] = readHex str

process lst = map convHex lst

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (lines fiStr)
