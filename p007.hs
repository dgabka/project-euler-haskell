primes :: [Integer]
primes = sieve [2 ..]
  where
    sieve (x : xs) = x : sieve [y | y <- xs, y `mod` x /= 0]

f :: Integer
f = primes !! 10000

main :: IO ()
main = do
  print f
