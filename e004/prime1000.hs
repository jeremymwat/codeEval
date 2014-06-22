import System.Environment
import Data.List

isPrime :: Integral int => int -> Bool
isPrime n | n > 1     = primeFactors n == [n]
          | otherwise = False

primeFactors :: Integral int => int -> [int]
primeFactors n = factors n (wheelSieve 6)
 where
  factors 1 _                  = []
  factors m (p:ps) | m < p*p   = [m]
                   | r == 0    = p : factors q (p:ps)
                   | otherwise = factors m ps
   where (q,r) = quotRem m p

main = do
  putStrLen (foldr (\x y -> if (isPrime x) then (x + y) else y) 0 [1..1000])
