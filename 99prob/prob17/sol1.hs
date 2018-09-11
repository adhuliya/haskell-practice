split' xs n = foldl (f) (1,[],[]) xs
  where
    f (i, l1, l2) x =
      if i > n
        then (i+1, l1, (x:l2))
        else (i+1, (x:l1), l2)

split xs n = (reverse a, reverse b)
 where
   (_, a, b) = split' xs n
