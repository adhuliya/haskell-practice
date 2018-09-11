rotate xs n = drop nn xs ++ take nn xs
  where
    nn = n `mod` (length xs)
