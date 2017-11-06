takel n l = foldl f [] l
  where
    f acc a | length acc >= n = acc
            | otherwise = acc++[a]

-- taker is not possible for obvious reasons
--taker n l = foldr f [] l
--  where
--    f a acc | length acc == ((length l) - n) = a:[]
--            | otherwise = a:acc
--

takeWhiler p l = foldr f [] l
  where
    f a acc | p a = a:acc
            | otherwise = []

takeWhilel p l = foldl f [] l
  where
    f acc a | p a = acc++[a]
            | otherwise = acc

taken n [] = []
taken 0 xs = []
taken n (x:xs) = x : taken (n-1) xs
