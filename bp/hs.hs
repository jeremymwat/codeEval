import System.Environment
import System.Exit

main = getArgs >>= parse >>= putStr . process

parse [] = usage  >> exit
parse [f] = readFile f

process = unlines . lines

usage   = putStrLn "Usage: foo <file>"
exit    = exitWith ExitSuccess
