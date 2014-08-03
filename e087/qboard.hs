import System.Environment

-- force read to Int
rd :: String -> Int
rd s = read s 

matr :: [[Int]]
matr = take 256 (repeat $ take 256 $ repeat 0)

setValLst :: Int -> a -> [a] -> [a]
setValLst ind val lstr = hd++[val]++(tail tl)
                           where (hd,tl) = splitAt ind lstr

setOp :: [String] -> (String,Int,Int)
setOp (x:y:z:[]) = (x,rd y,rd z)
setOp (x:y:[]) = (x,rd y,-1)
setOp _        = ("QueryCol",0,-1)

setCol :: Int -> Int -> [[Int]] -> [[Int]]
setCol i v matx = setValLst i (take 256 (repeat v)) matx

setRow :: Int -> Int -> [[Int]] -> [[Int]]
setRow i v matx = map (setValLst i v) matx

queryCol :: Int -> [[Int]] -> String
queryCol i matx = show $ sum (matx!!i) 
                 
queryRow :: Int -> [[Int]] -> String                  
queryRow i matx = show $ foldr (\x y -> (x!!i) + y) 0 matx

process :: [[Int]] -> [(String,Int,Int)] -> [String]
process matx lst
    | lst == []           = []
    | hd == "QueryCol"    = (queryCol i matx):(process matx tl)
    | hd == "QueryRow"    = (queryRow i matx):(process matx tl)
    | hd == "SetCol"      = process (setCol i v matx) tl
    | hd == "SetRow"      = process (setRow i v matx) tl
    | otherwise           = []
        where (hd,i,v) = head lst
              tl = tail lst

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process matr $ map (\x -> setOp (words x)) $ lines fiStr
