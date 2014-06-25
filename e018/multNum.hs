import Data.List
import Data.Function
import Data.List.Split
import System.Environment

readInt :: [Char] -> Int
readInt x = read x

biggest :: Int -> Int -> String
biggest num tes = show $ head [x|x<-[num*1,num*2..],x >= tes]

chew :: [[String]] -> String

chew [] = ""
chew ((hd:hd2:_):[]) = biggest (readInt hd2) (readInt hd)
chew ((hd:hd2:_):tl) = biggest (readInt hd2) (readInt hd) ++ "\n" ++ (chew tl)


main = do
      args <- getArgs
      fiStr <- readFile (head args)
      putStrLn $ chew $ map (splitOn ",") $ endBy "\n" fiStr
