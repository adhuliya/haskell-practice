pack z = foldr (f) [[]] z
  where
    f x [[]] = [[x]]
    f x ((y:ys):yys) = if x == y
                       then (x:y:ys):yys
                       else [x]:(y:ys):yys
