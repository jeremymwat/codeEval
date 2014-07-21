import System.Environment

-- build outermost part of spiral (reverse list, `take` end, zipwith coords), on end call recursively, continue. a
-- idea for getting coords - count down x, then switch to counting down y, etc

main = do
    args <- getArgs
    fiStr <- readFile (head args)
    putStrLn $ unlines $ process (lines fiStr)
