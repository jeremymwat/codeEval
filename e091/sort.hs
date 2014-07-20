import System.Environment
import Data.List

mapF :: [String] -> [Float]
mapF str = map (read) str


mapS :: [Float] -> [String]
mapS as = map show as

process strs = map (\x -> unwords . mapS . sort . mapF . words $ x) strs

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (lines fiStr)
