import System.Environment

main :: IO ()
main = print (sum (multiples 1000))

multiples x = [n | n <- [1..x-1], is_multiple n]

is_multiple x = (mod x 5 == 0 || mod x 3 == 0)
