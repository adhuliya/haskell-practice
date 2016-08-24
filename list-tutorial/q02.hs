-- Problem 02 - List Tutorial
--
-- Given a Well Balanced Paranthesis String def =  S -> (S) S | e
-- Return the number of unbalanced paranthesis in an input string.
--
-- E.g
-- ")(" = 2
-- "()(())" = 0
-- "())))" = 3
--

errno a = l + r
 where
   (l, r) = foldr f (0,0) a
     where
       f c (l',r') | c == ')' = (l',r'+1)
                   | c == '(' && r' > 0 = (l',r'-1)
                   | c == '(' && r' == 0 = (l'+1,r')
