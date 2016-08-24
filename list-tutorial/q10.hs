-- Problem 10
-- Pascal’s triangle is a sequence of rows of numbers that go like this:
--     1
--    1 1
--   1 2 1
--  1 3 3 1
-- _ _ _ _ _
--An entry in a row is obtained by adding the numbers to its left and right in the previous row,padding with zeroes if necessary.Suppose that Pascal’s triangle were represented as a list of lists. Using list comprehension, give a recursive definition of Pascal’s triangle.


pascal = pascal1 [1]

pascal1 l = l : pascal1 (pascal2 0 l)

pascal2 prev [] = [prev]
pascal2 prev (x:xs) = (prev+x) : pascal2 x xs
