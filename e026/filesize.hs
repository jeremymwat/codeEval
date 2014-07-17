import System.Environment
import System.Posix.Files

main = do
    args <- getArgs
    fiStr <- getFileStatus (head args)
    putStrLn $ show (fileSize fiStr)
