-- re-attempted 20180828
data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem a) = [a]
flatten (List (a:as)) = flatten a ++ flattenl as

flattenl :: [NestedList a] -> [a]
flattenl [] = []
flattenl (a:as) = flatten a ++ flattenl as
