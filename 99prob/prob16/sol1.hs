-- drop every nth element

dropEvery' xs n = foldl (\(i,y) x -> if i `mod` n == 0 then (i+1,y) else (i+1, (x:y))) (1,[]) xs

dropEvery xs n = reverse . snd $ dropEvery' xs n
