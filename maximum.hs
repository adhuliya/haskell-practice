mymax (x:[]) = x
mymax (x:xs) = max x $ mymax xs

mymax2 :: (Num a, Ord a) => [a] -> a
mymax2 = foldl (\acc x -> max acc x) 0

mymax3 :: (Num a, Ord a) => [a] -> a
mymax3 = foldl1 (\acc x -> max acc x)
