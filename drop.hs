dropn 0 xs = xs
dropn n [] = []
dropn n (x:xs) = dropn (n-1) xs
