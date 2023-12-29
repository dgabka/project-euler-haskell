f :: Integer
f = sum [x | x <- takeWhile (< 4000000) fibs, even x]
  where
    fibs = 0 : 1 : zipWith (+) fibs (drop 1 fibs)

main :: IO ()
main = do
  print f
