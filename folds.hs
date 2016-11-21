head' l = foldr (\a acc -> a) (error "empty list") l

last' l = foldl (\acc a -> a) (l !! 0) l


foldl' f a [] = a
foldl' f a (x:xs) = foldl' f (f a x) xs
