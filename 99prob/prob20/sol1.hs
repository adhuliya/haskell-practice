removeAt' xs n = foldl (f) (1, []) xs
  where
    f (i, v) x =
      if i == n
        then (i+1, v)
        else (i+1, (x:v))

removeAt xs n = reverse . snd $ removeAt' xs n
