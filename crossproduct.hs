-- cross product of n list
-- [[1,2],[3,4],[5,6]]


-- [[1,2]] = [(1), (2)]
-- [[1,2], [3,4]] = (1,3) (1,4) (2,3) (2,4)
--

--mycrossp [] = []
--mycrossp [x] = [[y] | y <- x]
--mycrossp [x, y] = [a ++ b | a <- x, b <- y]

mycrossp ll = foldr f [[]] ll
  where
    f a b = [a1 : b1 | a1 <- a, b1 <-b]

cp [] = [[]]
cp (xs:xss) = [x:ys | x <- xs, ys<-(cp xss)]

--mycrossp x:y:xs = 

