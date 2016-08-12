myButLast [] = error "list has no elements"
myButLast [x] = error "list has only one element"
myButLast [x,y] = x
myButLast (x:xs) = myButLast xs
