-- Question 4
-- Building a tree from a list 
-- in which each node at (one based) index n 
-- has children at 2n and 2n+1
--

data Htree a = Null | Fork a (Htree a) (Htree a)
  deriving (Show)

levels l = reverse (levels' 1 1 [] [] l)
  where
    levels' _ _ c s [] = if null c then s else (reverse c):s
    levels' n n' c s (x:xs) | n' == n = levels' (2*n) 1 [] ((reverse (x:c)):s) xs
                        | otherwise = levels' n (n'+1) (x:c) s xs


levels1 l = levels1' 1 l
  where
    levels1' n [] = []
    levels1' n l = take n l : levels1' (2*n) (drop n l)

mktree :: [[a]] -> [Htree a]
mktree = foldr addLayer [Null]

addLayer l [Null] = map (\y -> Fork y Null Null) l
addLayer n@(x:xs) [] = map (\y -> Fork y Null Null) n
addLayer [] [] = []
addLayer [] _ = error "parent cannot be empty"
addLayer (x:xs) (y1:y2:ys) = Fork x y1 y2 : addLayer xs ys
addLayer (x:xs) (y1:ys) = Fork x y1 Null : addLayer xs ys
