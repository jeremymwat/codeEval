import System.Environment

-- force read to Int
rd :: String -> Int
rd s = read s 

matr = take 256 (repeat $ take 256 $ repeat 0)

setValLst ind val lstr = hd++newVal++(tail tl)
                           where (hd,tl) = splitAt ind lstr


setOp (x:y:z:[]) = (x,rd y,rd z)
setOp (x:y:[]) = (x,rd y,-1)
setOp _        = ("QueryCol",0,-1)

setCol i v = setValLst i (take 256 (repeat v))
setRow i v = map (setValLst i v) 

queryCol i matr = sum (matr!!i) 
queryRow i matr = foldr (\x y -> (x!!i) + y)

-- take arg string, break in to lines, remove commas, read from string to int
lis :: String -> [Int]
lis lst = map (\x -> map rd $ splitOn "," x) (lines lst)


process matr lst
    | lst == []           = []
    | hd == "QueryCol"    = (queryCol i matr):(process matr tl)
    | hd == "QueryRow"    = (queryRow i matr):(process matr tl)
    | hd == "SetCol"      = process (setCol i v matr) tl
    | hd == "SetRow"      = process (setRow i v matr) tl
    | hd == _             = []
        where (hd,i,v) = head lst

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process $ map (\x -> setOp (words x)) lines fiStr)
