isPalindrome :: Integer -> Bool
isPalindrome n = compare (show n)
  where
    compare (x : xs)
      | null xs = True
      | length xs == 1 = x == head xs
      | otherwise = x == last xs && compare (init xs)

multiplyAllElem :: [Integer] -> Integer -> [Integer]
multiplyAllElem a n = map (n *) a

f :: Integer
f =
  maximum
    [ x
      | x <- concatMap (multiplyAllElem [100 .. 999]) [100 .. 999],
        isPalindrome x
    ]

main :: IO ()
main = do
  print f
