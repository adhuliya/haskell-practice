tell [] = "Empty list"
tell [x] = "List with one element " ++ show x
tell [x,y] = "List with two elements"
tell (x:y:_) = "List with many elements"
