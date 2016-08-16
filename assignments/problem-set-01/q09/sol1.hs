prime p = all (\x -> p `mod` x /= 0) [a | a <- [2..(div p 2)]]

carmichael' p = not (prime p) && all (\x -> x `mod` p == 1) [a^(p-1) | a <- [1..p], gcd a p == 1]

carmichael n = carmichaell 1 n

carmichaell x 1 | carmichael' x = x
                | otherwise = carmichaell (x+1) 1

carmichaell x n = carmichaell ((carmichaell x 1)+1) (n-1)
