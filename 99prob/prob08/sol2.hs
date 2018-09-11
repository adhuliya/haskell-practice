myCompress c = foldr (f) [] c
  where
    f x [] = [x]
    f x r@(y:xs) = if x == y then r else (x:r)
