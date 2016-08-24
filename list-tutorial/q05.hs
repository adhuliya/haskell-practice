-- Problem 5
-- Consider the function hof (higher order function) given by:
-- hof a b c [] = b
-- hof a b c (x:xs) = c ( a x ) (hof a b c xs)
-- Use this function to define the functions:
-- • map
-- • foldr
-- • reverse
-- • takewhile
--

myhof a b c [] = b
myhof a b c (x:xs) = c ( a x ) (myhof a b c xs)

mymap f l = myhof f [] (:) l

myfoldr f iden l = myhof id iden f l

myreverse l = myhof (:[]) [] (flip (++)) l

mytakewhile p l = myhof id [] c l
  where
    c a acc | p a = a : acc
            | True = []
