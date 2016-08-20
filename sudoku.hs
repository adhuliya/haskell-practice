boxsize = 3::Int
allvalues = "123456789"
blank = "."

-- creates a crossproduct list from a list of lists
cp l = foldr (\a acc -> [a':acc' | a' <- a, acc' <- acc]) [[]] l

-- replace blank cells with all possible values list
initChoice r = foldr f [] r
  where
    f a acc | a == blank = allvalues : acc
            | otherwise = a : acc

-- takes transpose of the matrix or
-- converts cols into rows
transpose = cols
cols [x] = map (:[]) x
cols (x:xs) = zipWith (:) x (cols xs)

-- chops a list into sublists of max-size n
chop _ [] = []
chop n l = take n l : chop n (drop n l)

-- chops each row of the sudoku board
chopr [] = []
chopr (x:xs) = chop 3 x : chopr xs

flatten l = foldr (\a acc -> a++acc) [] l

-- converts each 3x3 sudoku box into a row
boxes = chop 9 . flatten . flatten . flatten . chopr . transpose . chopr

isrowcorrect mat = foldr (\a acc -> nodup a && acc) True mat

nodup [] = True
nodup (x:xs) = x `notElem` xs && nodup xs

issolution board = isrowcorrect (cols board) && isrowcorrect board && isrowcorrect (boxes board)

-- matrix cross product
-- mcp b = foldr (\a acc -> [(cols a'):acc' | a' <- cp (initChoice a), acc' <- acc]) [[]] b

--mcp [x] = [[x':[]| x' <- y] | y <- cp (initChoice x)]
--mcp (x:xs) = [x':xs' | x' <- mcp [x], xs' <- mcp xs]
--mcp [r1,r2,r3,r4,r5,r6,r7,r8,r9] = [

