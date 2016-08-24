-- Problem 12
-- Given a list xs = [x 0 , x 1 , ..., x n ] of numbers, the sequence of successive maxima, ssm
-- xs, is the longest subsequence [x j 0 , x j 1 , ...x j m ] such that j 0 = 0 and x j i < x j k for j i < j k .
-- For example, the sequence of successive maxima of [3,1,3,4,9,2,10,7] is [3,4,9,10].
-- Define ssm.

ssm (x:xs) = x : ssm' x xs

ssm' x [] = []
ssm' x (y:ys) | y <= x = ssm' x ys
              | True = rest
  where
    rest1 = y : ssm' y ys
    rest2 = ssm' x ys
    rest = if length rest1 > length rest2 then rest1 else rest2
