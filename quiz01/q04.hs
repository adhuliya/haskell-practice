-- print kth minimum from a list
--

kth l k = kth' [] k l

kth' mins k [] = head mins
kth' mins k (x:xs) = kth' (insk mins x k) k xs


insk l n k = if length ll > k then tail ll else ll
  where
    ll = ins l n

ins [] n = [n]
ins (x:xs) n | n >= x = n:x:xs
             | otherwise = x:(ins xs n)
