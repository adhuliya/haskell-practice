myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

myPalindrome l | l == myReverse l = True
               | otherwise = False
