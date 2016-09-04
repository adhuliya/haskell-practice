-- delete an element from the list (only its first occurance from left

mydelete x [] = []
mydelete x (y:ys) | x == y = ys
                  | otherwise = y : (mydelete x ys)


-- no solving Josephus problem using the delete function


