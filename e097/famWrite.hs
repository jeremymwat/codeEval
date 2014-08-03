import System.Environment
import Data.List.Split

-- force read to Int
rd :: String -> Int
rd s = read s 

decode :: (String, [Int]) -> String
decode (str,lst) = map (\x -> str!!(x-1)) lst

splitBreak :: String -> (String, [Int])
splitBreak str = let (code:strLst:[]) = splitOn "|" str in
                (code,(map rd $ words strLst))


main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ map (decode . splitBreak) $ lines fiStr 
