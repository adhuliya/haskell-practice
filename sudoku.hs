boxsize = 3::Int
allvalues = "123456789"
blank = "."

cp l = foldr f [[]] l
  where
    f a acc = [a':acc' | a' <- a, acc' <- acc]

initChoice r = foldr f [] r
  where
    f a acc | a == blank = allvalues : acc
            | otherwise = a : acc

cols [x] = map (:[]) x
cols (x:xs) = zipWith (:) x (cols xs)

chop _ [] = []
chop n l = take n l : chop n (drop n l)

chopr [] = []
chopr (x:xs) = chop 3 x : chopr xs

flatten l = foldr f [] l
  where
    f a acc = a++acc

transpose [x] = map (:[]) x
transpose (x:xs) = zipWith (:) x (transpose xs)

boxes = chop 9 . flatten . flatten . flatten . chopr . transpose . chopr

isrowcorrect mat = foldr f True mat
  where
    f a acc = nodup a && acc

nodup [] = True
nodup (x:xs) = x `notElem` xs && nodup xs

issolution board = isrowcorrect (cols board) && isrowcorrect board && isrowcorrect (boxes board)
