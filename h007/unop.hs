import System.Environment
import System.Exit
import Data.List.Split

readF :: String -> Float
readF s = read s 

unopT :: [String] -> Float 

unopT (s:str) 
     | str == [] = read s
     | s == "*"  = (*) (unopT (init str)) (readF $ last str)
     | s == "+"  = (+) (unopT (init str)) (readF $ last str)
     | s == "/"  = (/) (unopT (init str)) (readF $ last str)
     | otherwise = (read s)

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ process (lines fiStr)

process x = unlines $ map (\x -> show $ floor $ unopT x) $ map (words) x

usage   = putStrLn "Usage: foo <file>"
exit    = exitWith ExitSuccess
