import System.Environment

rd :: String -> Int
rd s = read s 


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ show $ foldr (\x y -> (+) (rd x) y) 0 (lines fiStr)
