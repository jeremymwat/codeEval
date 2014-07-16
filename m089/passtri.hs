import System.Environment

readI :: String -> Int
readI x = read x

treeTest =  [[5], [9, 6], [4, 6, 8], [0, 7, 1, 5]]

pairTest (x,(n,m)) = max (x+n) (x+m)

buildTop top 
  | length top == 1      = [(0,head top),(head top,0)]
  | otherwise            = zip ([0] ++ top) (top ++ [0])

firstLevel l1 l2 = map pairTest (zip l2 (buildTop l1))

maxTree tr = foldl (\x y -> firstLevel x y) (head tr) (tail tr)

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ show $ maximum $ maxTree $ map (\x -> map readI $ words x) (lines fiStr)
