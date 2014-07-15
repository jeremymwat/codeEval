import System.Environment

process str = map (foldl (\x y -> if (length x) >= length y then x else y) "") str

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (map words $ lines fiStr)


