inits [] = [[]]
inits (x:xs) = [] : map (x:) (inits xs)

tails [] = [[]]
tails (x:xs) = (x:xs) : tails xs
