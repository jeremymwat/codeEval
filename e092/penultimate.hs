import System.Environment



main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ map (\x -> last . init . words $ x) (lines fiStr)

