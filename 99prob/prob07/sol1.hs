-- TODO unfamiliar with custom data in Haskell
-- *Main> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
data NestedList a = Elem a | List [NestedList a]

flatten (Elem a) = [a]
flatten (List []) = []
flatten (List (x:xs)) = flatten x ++ flatten (List xs)

-- by Prasanna
flatten' (Elem a)    = a : []
flatten' (List l)    = foldr (\x y -> (flatten' x) ++ y) [] l
