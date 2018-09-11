lastelem :: [a] -> a
lastelem [] = error "empty list given"
lastelem [x] = x
lastelem (x:xs) = lastelem xs
