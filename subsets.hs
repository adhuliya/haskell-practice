-- find all subsets of a list
--

inits = scanl (\acc x -> acc ++ [x]) []

tails = scanr (:) []

append l a = l ++ (map (++[a]) l)

subsets l = foldl (append) [[]] l
