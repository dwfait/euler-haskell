import System.Environment
import Prelude

main :: IO ()
main = print (sum [x | x <- (takeWhile (<4000000) fib), even x])

fib :: [Integer]
fib = 1:1:zipWith (+) fib (tail fib)
