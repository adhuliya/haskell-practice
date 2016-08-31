mylength [] = 0
mylength (_:xs) = 1 + mylength xs

mysum [] = 0
mysum (x:xs) = x + mysum xs

myproduct [] = 1
myproduct (x:xs) = x * myproduct xs

myreverse [] = []
myreverse (x:xs) = myreverse xs ++ [x]

myconcat [] y = y
myconcat x [] = x
myconcat (x:xs) y = x : myconcat xs y

myfilter [] p = []
myfilter (x:xs) p | p x = x : myfilter xs p
                  | otherwise = myfilter xs p

mymap [] m = []
mymap (x:xs) m = m x : mymap xs m

mytake 0 l = []
mytake n [] = []
mytake n (x:xs) = x: mytake (n-1) xs

mydrop 0 l = l
mydrop n [] = []
mydrop n (x:xs) = mydrop (n-1) xs

mytakewhile [] p = []
mytakewhile (x:xs) p | p x = x : mytakewhile xs p
                     | otherwise = []

mydropwhile [] p = []
mydropwhile (x:xs) p | p x = mydropwhile xs p
                     | otherwise = (x:xs)

-- all computations as foldr
--
myfoldr f id [] = id
myfoldr f id (x:xs) = f x (myfoldr f id xs)

mylength' l = myfoldr f id l
  where
    id = 0
    f a b = 1 + b

myreverse' l = myfoldr f id l
  where
    id = []
    f a b = b ++ [a]

mytakewhile' l p = myfoldr f id l
  where 
    id = []
    f a b | p a = a : b
          | otherwise = []

-- wrong implementation of mydropwhile using foldr
--mydropwhile' l p = myfoldr f id l
--  where
--    id = []
--    f a b | p a = b
--          | otherwise = a:b
