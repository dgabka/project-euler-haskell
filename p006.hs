sqrOfSum :: Integer
sqrOfSum = sum [1 .. 100] ^ 2

sqr :: Integer -> Integer
sqr n = n ^ 2

sumOfSqr :: Integer
sumOfSqr = sum (map sqr [1 .. 100])

f :: Integer
f = sqrOfSum - sumOfSqr

main :: IO ()
main = do
  print f
