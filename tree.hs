data Tree a = Null | Node a (Tree a) (Tree a)

insert v Null = Node v Null Null
insert v (Node x lt rt) | v < x = Node x (insert v lt) rt
                        | otherwise = Node x lt (insert v rt)

flatten Null = []
flatten (Node x lt rt) = flatten lt ++ [x] ++ flatten rt

main = do
    l <- getLine
    print l


