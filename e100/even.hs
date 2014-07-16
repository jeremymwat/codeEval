import System.Environment

readI :: String -> Int
readI x = read x

process :: [String] -> [String]
process lst = map (\x -> if even (readI x) then "1" else "0") lst

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (lines fiStr)


