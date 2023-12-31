lcm' :: [Integer] -> Integer
lcm' [] = 0
lcm' [x] = x
lcm' [a, b] = lcm a b
lcm' (x : xs) = lcm x (lcm' xs)

f :: Integer
f = lcm' [1 .. 20]

main :: IO ()
main = do
  print f
