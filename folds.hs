head' l = foldr (\a acc -> a) (error "empty list") l

last' l = foldl (\acc a -> a) (l !! 0) l
