-- Problem 03
-- write a Haskell function powers which when given an argument x
-- returns a list containing the powers of x.
-- example: powers 2 = [1,2,4,8,16,...]
--

-- without recursion : list comprehension
-- powers a = [a^x | x <- [0..]]

-- A list comprehension is basically a map here
-- powers a = map (a^) [0..]

powers a = powers' a 0

powers' a x = a^x : powers' a (x+1)
