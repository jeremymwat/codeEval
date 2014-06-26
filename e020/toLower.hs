import Data.List as L
import Data.Char as C
import System.Environment
--import Data.Text

main = do
    args <- getArgs
    fiStr <- readFile (L.head args)
   -- putStrLn $ strip $ map C.toLower fiStr
    putStrLn $ map C.toLower fiStr
