import System.Environment

-- force read to Int
rd :: String -> Int
rd s = read s 

-- take arg string, break in to lines, remove commas, read from string to int
lis :: String -> [Int]
lis lst = map (\x -> map rd $ splitOn "," x) (lines lst)


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process fiStr
