import System.Environment

readIL :: [String] -> [Float]
readIL x = map read x

procFilter :: String -> String
procFilter = filter (`notElem` "(),")

dist :: [Float] -> Float
dist (n1:m1:n2:m2:_) = sqrt ((n1-n2)^2 + (m1-m2)^2)

process x = 
    let y = map (\g -> readIL $ words $ procFilter g) x in 
        map (show . truncate .dist) y


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (lines fiStr)


