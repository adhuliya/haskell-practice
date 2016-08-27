
mytakewhile p l = foldl f ([], True) l
  where
    f (a,b) x | not b = (a, False)
              | p x = (a++[x], True)
              | True = (a, False)
