-- Problem 6
-- Write a function lcs :: (Eq a) => [a] -> [a] -> [a] in Haskell to find a longest com- mon subsequence of two lists. For example the following call to lcs:
-- lcs [’A’,’B’,’C’,’B’,’D’,’A’] [’B’,’D’,’C’,’A’,’B’,’A’]
-- returns [’B’,’C’,’B’,’A’].
--
lcs [] _ = []
lcs _ [] = []
lcs (x:xs) (y:ys) | x == y = x : rem1
                  | otherwise = rem2
  where
    rem1 = lcs xs ys
    lcsx = lcs xs (y:ys)
    lcsy = lcs (x:xs) ys
    rem2 = if length lcsx > length lcsy then lcsx else lcsy
