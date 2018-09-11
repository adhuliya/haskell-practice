encode z = foldr (f) [((-1), (head z))] z
  where
    f x (((-1), zz):[]) = (1, x) : []
    f x ((n, y):yys) = if x == y
                         then ((n+1, y):yys)
                         else (1, x):(n, y):yys
