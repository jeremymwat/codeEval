import System.Environment
import System.Exit


main = do 
	putStrLn $ unlines [show x|x<-[1,2..99] , x `mod` 2 == 1]
