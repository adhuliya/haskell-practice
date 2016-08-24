-- Problem 04
-- Rewrite reverse to make it efficient
-- Given definition
-- reverse [] = []
-- reverse (x:xs) = reverse xs ++ [x]

myreverse l = foldl f [] l
  where
    f acc a = a:acc
