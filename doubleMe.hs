doubleMe [] = []
doubleMe (x:xs) = x*2 : doubleMe xs

mytake n [] = []
mytake n (x:xs) = x : mytake (n-1) xs
