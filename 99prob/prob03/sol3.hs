elementAt l n = foldr g id l
  where
    id = (-1,-1) -- error "out of range"
    g a (b,n) | n == 0 = (a,0)
              | otherwise = (b,n-1)
    -- todo
