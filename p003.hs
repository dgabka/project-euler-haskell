num = 600851475143

isModNonZero :: Integer -> Integer -> Bool
isModNonZero n x = n `mod` x /= 0

intSqrt = floor . sqrt . fromInteger

isPrime :: Integer -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime n
  | even n = False
  | otherwise = foldr ((&&) . isModNonZero n) True [3, 5 .. (intSqrt n)]

lpf :: Integer -> Integer
lpf n
  | num `mod` n == 0 && isPrime (num `div` n) = num `div` n
  | otherwise = lpf (n + 2)

main :: IO ()
main = do
  print (lpf 3)
