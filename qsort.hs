-- qsort with list comprehension
qsort [] = []
qsort (x:xs) = qsort l ++ [x] ++ qsort r
    where
        l = [y | y <- xs, y < x]
        r = [y | y <- xs, y >= x]

