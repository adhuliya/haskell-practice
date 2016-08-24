-- Problem 8
-- Define function cpord
-- The function cprod takes a list of lists and computes its Cartesian product:
-- cprod [[1, 2, 3], [4], [5, 6]] =
-- [[1, 4, 5], [1, 4, 6], [2, 4, 5], [2, 4, 6], [3, 4, 5], [3, 4, 6]]

cprod [] = [[]]
cprod (x:xs) = [x':xs'| x'<-x,xs'<-cprod xs]
